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
    @State var workoutNameText = ""
    @State var showSheet:Bool = false
    @State var showAlert:Bool = false
    @State var selectedExercises: Set<String> = []
    @StateObject var viewModel = ExerciseViewModel()
    
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
                                TextField("Name", text: $workoutNameText)
                            }
                            
                            Section(header: Text("CHEST")) {
                                ForEach(viewModel.data.filter {$0.category == .chest}) { exercise in
                                    ExerciseButton(name: exercise.name, selectedExercises: $selectedExercises)
                                }
                            }
                            Section(header: Text("BACK")) {
                                ForEach(viewModel.data.filter {$0.category == .back}) { exercise in
                                    ExerciseButton(name: exercise.name, selectedExercises: $selectedExercises)
                                }
                            }
                            Section(header: Text("SHOULDERS")) {
                                ForEach(viewModel.data.filter {$0.category == .shoulders}) { exercise in
                                    ExerciseButton(name: exercise.name, selectedExercises: $selectedExercises)
                                }
                            }
                            Section(header: Text("BICEPS")) {
                                ForEach(viewModel.data.filter {$0.category == .biceps}) { exercise in
                                    ExerciseButton(name: exercise.name, selectedExercises: $selectedExercises)
                                }
                            }
                            Section(header: Text("TRICEPS")) {
                                ForEach(viewModel.data.filter {$0.category == .triceps}) { exercise in
                                    ExerciseButton(name: exercise.name, selectedExercises: $selectedExercises)
                                }
                            }
                            Section(header: Text("ABS")) {
                                ForEach(viewModel.data.filter {$0.category == .abs}) { exercise in
                                    ExerciseButton(name: exercise.name, selectedExercises: $selectedExercises)
                                }
                            }
                            Section(header: Text("LEGS")) {
                                ForEach(viewModel.data.filter {$0.category == .legs}) { exercise in
                                    ExerciseButton(name: exercise.name, selectedExercises: $selectedExercises)
                                }
                            }
                        }// Form
                        
                        Button {
                            if(selectedExercises.isEmpty) {
                                showAlert = true
                            }
                            else {
                                DataController().addWorkout(name: workoutNameText, exercises: Array(selectedExercises), context: managedObjContext)
                                showSheet = false
                                
                                //Clear sheet
                                selectedExercises.removeAll()
                                workoutNameText = ""
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
