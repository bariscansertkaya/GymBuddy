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
        VStack(alignment: .leading) {
            Image(exercise.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 360, height: 240)
                .cornerRadius(12)
            
                Text(exercise.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.vertical,2)
                    .padding(.leading,5)
                    .foregroundColor(.accentColor)
                    .multilineTextAlignment(.leading)
        }
        .padding(.bottom, 30)
    }
}

struct ExerciseCardView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseCardView(exercise: Exercise.all()[0])
            .previewLayout(.sizeThatFits)
    }
}
