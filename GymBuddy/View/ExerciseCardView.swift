//
//  ExerciseCardView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.04.2023.
//

import SwiftUI

struct ExerciseCardView: View {
    let exercise: Exercise
    
    var body: some View {
        HStack {
            Image(exercise.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text(exercise.name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
                    .padding(.bottom,2)
                
                Text(exercise.steps[0])
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .imageScale(.large)
                .fontWeight(.heavy)
                .padding(.horizontal,0)
        }
        .padding(.horizontal,2)
    }
}

struct ExerciseCardView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseCardView(exercise: Exercise(name: "Dumbbell Lateral Raise", steps: ["Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt"], tips: [], imageName: "bench-press",category: .chest))
            .previewLayout(.sizeThatFits)
    }
}
