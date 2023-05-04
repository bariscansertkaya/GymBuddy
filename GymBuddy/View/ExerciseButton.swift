//
//  ExerciseButton.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 4.05.2023.
//

import SwiftUI

struct ExerciseButton: View {
    
    let name:String
    @Binding var selectedExercises:Set<String>
    
    var body: some View {
        Button(action: {
            if selectedExercises.contains(name) {
                selectedExercises.remove(name)
            } else {
                selectedExercises.insert(name)
            }
        }) {
            HStack {
                Text(name)
                    .font(.system(size: 20))
                Spacer()
                if selectedExercises.contains(name) {
                    Image(systemName: "checkmark")
                }
            }
        }
    }
}

struct ExerciseButton_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseButton(name: "Bench Press", selectedExercises: .constant(Set<String>()))
    }
}
