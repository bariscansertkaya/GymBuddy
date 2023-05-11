//
//  ExerciseButton.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 4.05.2023.
//

import SwiftUI

struct ExerciseButton: View {
    
    let name:String
    let imageName:String
    @Binding var selectedExercises:Set<String>
    
    var body: some View {
        Button {
            if selectedExercises.contains(name) {
                selectedExercises.remove(name)
            } else {
                selectedExercises.insert(name)
            }
        } label: {
            HStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .cornerRadius(8)
                
                VStack(alignment: .leading) {
                    Text(name)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.accentColor)
                }
                
                Spacer()
                
                if selectedExercises.contains(name) {
                    Image(systemName: "checkmark.circle")
                }
                    
            } //HStack
            .padding(.vertical,5)
        }
    }
    
    struct ExerciseButton_Previews: PreviewProvider {
        static var previews: some View {
            ExerciseButton(name: "Bench Press", imageName: "bench-press", selectedExercises: .constant(Set<String>()))
        }
    }
}
