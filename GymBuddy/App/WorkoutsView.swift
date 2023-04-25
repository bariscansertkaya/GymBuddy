//
//  WorkoutsView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.04.2023.
//

import SwiftUI

struct WorkoutsView: View {
    
    @State var workouts: [Workout] = []
    @State var newWorkoutName = ""
    @State var newWorkoutDescription = ""
    @State var showSheet:Bool = false
    @State var showAlert:Bool = false
    @State var selectedExercises: Set<Exercise> = []
    
    let allExercises: [Exercise] = Exercise.all()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(workouts) { workout in
                    Section(header: Text(workout.name)) {
                        ForEach(workout.exercises) { exercise in
                            Text(exercise.name)
                        }
                    }
                }
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
                                        if selectedExercises.contains(exercise) {
                                            selectedExercises.remove(exercise)
                                        } else {
                                            selectedExercises.insert(exercise)
                                        }
                                    }) {
                                        HStack {
                                            Text(exercise.name)
                                            Spacer()
                                            if selectedExercises.contains(exercise) {
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
                                let newWorkout:Workout = Workout(name: newWorkoutName, exercises: Array(selectedExercises))
                                workouts.append(newWorkout)
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
}


struct WorkoutsView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutsView()
    }
}
