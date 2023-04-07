//
//  WorkoutsView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.04.2023.
//

import SwiftUI

struct WorkoutsView: View {
    @State private var selectedExercises: Set<Exercise> = []
    @State private var selectedWorkoutName: String = ""
    
    let exercises: [Exercise] = Exercise.all()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Select Exercises")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                List(exercises, id: \.self) { exercise in
                    Button(action: {
                        if selectedExercises.contains(exercise) {
                            selectedExercises.remove(exercise)
                        } else {
                            selectedExercises.insert(exercise)
                        }
                    }) {
                        HStack {
                            Image(exercise.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                            
                            Text(exercise.name)
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                
                TextField("Workout Name", text: $selectedWorkoutName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                Spacer()
            }
            .padding()
            .navigationBarTitle("Create Workout", displayMode: .inline)
            .navigationBarItems(trailing: Button("Save") {
                _ = Array(selectedExercises)
                _ = Workout(name: "Yeni", description: "Test", imageName: "photo.fill", isFeatured: true, exercises: exercises)
                // Add code to save the new workout
            })
        }
    }
}


struct WorkoutsView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutsView()
    }
}
