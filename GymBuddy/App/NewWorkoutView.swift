//
//  NewWorkoutView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 11.05.2023.
//

import SwiftUI

struct NewWorkoutView: View {
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.managedObjectContext) var managedObjContext
    @StateObject var viewModel = ExerciseViewModel()
    @State var selectedExercises: Set<String> = []
    @State var workoutName:String = ""
    @State var showAlert:Bool = false
    
    var body: some View {
        VStack(spacing: 30) {
            Text("New Workout")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            ScrollView(.vertical,showsIndicators: false) {
                VStack(spacing: 10) {
                    DisclosureGroup("Chest") {
                        ForEach(viewModel.data.filter {$0.category == .chest}) { exercise in
                            ExerciseButton(name: exercise.name, imageName: exercise.imageName, selectedExercises: $selectedExercises)
                        }
                    }
                    DisclosureGroup("Back") {
                        ForEach(viewModel.data.filter {$0.category == .back}) { exercise in
                            ExerciseButton(name: exercise.name, imageName: exercise.imageName, selectedExercises: $selectedExercises)
                        }
                    }
                    DisclosureGroup("Shoulders") {
                        ForEach(viewModel.data.filter {$0.category == .shoulders}) { exercise in
                            ExerciseButton(name: exercise.name, imageName: exercise.imageName, selectedExercises: $selectedExercises)
                        }
                    }
                    DisclosureGroup("Biceps") {
                        ForEach(viewModel.data.filter {$0.category == .biceps}) { exercise in
                            ExerciseButton(name: exercise.name, imageName: exercise.imageName, selectedExercises: $selectedExercises)
                        }
                    }
                    DisclosureGroup("Triceps") {
                        ForEach(viewModel.data.filter {$0.category == .triceps}) { exercise in
                            ExerciseButton(name: exercise.name, imageName: exercise.imageName, selectedExercises: $selectedExercises)
                        }
                    }
                    DisclosureGroup("Forearms") {
                        ForEach(viewModel.data.filter {$0.category == .forearms}) { exercise in
                            ExerciseButton(name: exercise.name, imageName: exercise.imageName, selectedExercises: $selectedExercises)
                        }
                    }
                    DisclosureGroup("Abs") {
                        ForEach(viewModel.data.filter {$0.category == .abs}) { exercise in
                            ExerciseButton(name: exercise.name, imageName: exercise.imageName, selectedExercises: $selectedExercises)
                        }
                    }
                    DisclosureGroup("Legs") {
                        ForEach(viewModel.data.filter {$0.category == .legs}) { exercise in
                            ExerciseButton(name: exercise.name, imageName: exercise.imageName, selectedExercises: $selectedExercises)
                        }
                    }
                }
                .font(.title2)
                .fontWeight(.bold)
            }
            
            TextFieldView(name: "Name...", text: $workoutName)
            
            Button {
                if(selectedExercises.isEmpty) {
                    showAlert = true
                }
                else {
                    DataController().addWorkout(name: workoutName, exercises: Array(selectedExercises), context: managedObjContext)
                    
                    //Clear sheet
                    selectedExercises.removeAll()
                    workoutName = ""
                    dismiss()
                }
            } label: {
                ButtonLabelView(name: "Save", width: 150, height: 50)
            }
            .alert("You haven't selected any exercises", isPresented: $showAlert) {
                Button("OK") { }
            }
            Spacer()
            
            
        }
    }
}

struct NewWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        NewWorkoutView()
    }
}
