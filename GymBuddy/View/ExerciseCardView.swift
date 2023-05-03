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
        VStack(alignment: .center) {
            Image(exercise.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 350, height: 350)
                .cornerRadius(12)
            
            HStack {
                Text(exercise.name)
                    .font(.system(size: 30, weight: .heavy, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.accentColor)
                Spacer ()
                
                Image(systemName: "chevron.right")
                    .imageScale(.large)
                    .fontWeight(.heavy)
            }
            .padding(.horizontal,20)
        }
        .padding(.bottom, 20)
    }
}

struct ExerciseCardView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseCardView(exercise: Exercise(name: "Bench Press", steps: [], tips: [], imageName: "bench-press",category: .chest))
            .previewLayout(.sizeThatFits)
    }
}
