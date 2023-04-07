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
        VStack(alignment: .leading) {
            Image(exercise.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Text(exercise.name)
                .font(.title)
                .fontWeight(.bold)
                .padding(.horizontal)
            
            Text(exercise.description)
                .font(.body)
                .padding(.horizontal)
                .padding(.bottom)
            
            Spacer()
        }
        .navigationBarTitle(Text(exercise.name), displayMode: .inline)
    }
}


struct ExerciseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseDetailView(exercise: Exercise.all().first!)
    }
}
