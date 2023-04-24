//
//  ExerciseDetailView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.04.2023.
//

import SwiftUI

struct ExerciseDetailView: View {
    let exercise: Exercise
    
    var body: some View {
        ScrollView {
            Image(exercise.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 360, height: 240)
                .cornerRadius(12)
            
            Text(exercise.name)
                .font(.system(size: 50))
                .fontWeight(.bold)
                .padding(.horizontal)
                .padding(.vertical,5)
                .foregroundColor(.accentColor)
            
            VStack(alignment: .leading) {
                
                
                ForEach(0..<exercise.steps.count, id: \.self) { i in
                    HStack {
                        ZStack {
                            Circle()
                                .frame(width: 40,height: 40)
                                .foregroundColor(.accentColor)
                                .padding(.horizontal,5)
                            Text("\(i+1)")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                        }
                        Text(exercise.steps[i])
                    }
                    .padding(.vertical)
                }
            }
        }
        .navigationBarTitle(Text(exercise.name), displayMode: .inline)
    }
}


struct ExerciseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseDetailView(exercise: Exercise.all().first!)
    }
}
