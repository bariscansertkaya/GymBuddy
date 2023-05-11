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
            
                TextField("Name...", text: $workoutName)
                    .frame(width: 360, height: 40, alignment: .center)
                    .multilineTextAlignment(.center)
                    .font(.title2)
                    .fontWeight(.light)
                    .background(Color(UIColor.systemGray5))
                    .cornerRadius(8)
            
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
                Text("Save")
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .font(.title)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .foregroundColor(.accentColor)
                            .frame(width: 150, height: 50, alignment: .center)
                    )
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
