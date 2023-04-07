//
//  ProgressView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.04.2023.
//

import SwiftUI

struct ProgressDashboardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("My Progress")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Recent Workouts")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top)
            
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    ForEach(Workout.all()) { workout in
                        WorkoutCardView(workout: workout)
                    }
                }
                .padding(.horizontal)
            }
            
            Spacer()
        }
        .padding()
        .navigationBarTitle("Progress", displayMode: .inline)
    }
}


struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressDashboardView()
    }
}
