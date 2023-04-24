//
//  ExercisesView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.04.2023.
//

import SwiftUI

struct ExercisesView: View {
    
    let exercises: [Exercise] = Exercise.all()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(exercises) { exercise in
                    NavigationLink(destination: ExerciseDetailView(exercise: exercise)) {
                        ExerciseCardView(exercise: exercise)
                    }
                }
            }
        }
    }
}

struct ExercisesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ExercisesView()
        }
        
        
    }
}
