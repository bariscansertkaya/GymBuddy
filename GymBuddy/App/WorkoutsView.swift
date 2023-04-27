//
//  WorkoutsView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.04.2023.
//

import SwiftUI

struct WorkoutsView: View {
    
    @Environment(\.managedObjectContext) var managedObjContext
    @FetchRequest(sortDescriptors: [SortDescriptor(\.name)]) private var workouts: FetchedResults<Workout>
    @State var newWorkoutName = ""
    @State var showSheet:Bool = false
    @State var showAlert:Bool = false
    @State var selectedExercises: Set<String> = []
    
    let allExercises: [Exercise] = Exercise.all()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(workouts) { workout in
                    WorkoutView(titleText: workout.name!, exercises: workout.exercises!)
                }
                .onDelete(perform: deleteWorkout)
            }
            .navigationBarTitle("My Workouts")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showSheet=true
                    } label: {
                        Image(systemName: "plus")
                            .fontWeight(.heavy)
                    }
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
            }
            .sheet(isPresented: $showSheet) {
                NavigationView {
                    VStack {
                        Form {
                            Section(header: Text("New Workout")) {
                                TextField("Name", text: $newWorkoutName)
                            }
                            
                            Section(header: Text("EXERCISES")) {
                                ForEach(allExercises) { exercise in
                                    Button(action: {
                                        if selectedExercises.contains(exercise.name) {
                                            selectedExercises.remove(exercise.name)
                                        } else {
                                            selectedExercises.insert(exercise.name)
                                        }
                                    }) {
                                        HStack {
                                            Text(exercise.name)
                                            Spacer()
                                            if selectedExercises.contains(exercise.name) {
                                                Image(systemName: "checkmark")
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        Button {
                            if(selectedExercises.isEmpty) {
                                showAlert = true
                            }
                            else {
                                DataController().addWorkout(name: newWorkoutName, exercises: Array(selectedExercises), context: managedObjContext)
                                showSheet = false
                                
                                //Clear sheet
                                selectedExercises.removeAll()
                                newWorkoutName = ""
                            }
                        } label: {
                            Text("Save")
                                .fontWeight(.bold)
                        }
                        .alert("You haven't selected any exercises", isPresented: $showAlert) {
                            Button("OK") { }
                        }
                        .padding(.bottom,30)
                    }
                    
                }
            }
        }
    }
    
    func deleteWorkout(index:IndexSet) {
        index.map { workouts[$0]}.forEach(managedObjContext.delete)
        DataController().save(context: managedObjContext)
        }
    }


struct WorkoutsView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutsView()
    }
}
