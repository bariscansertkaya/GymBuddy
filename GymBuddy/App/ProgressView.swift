//
//  ProgressView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.04.2023.
//

import SwiftUI

struct ProgressDashboardView: View {
    
    @State var exerciseProgressArray: [ExerciseProgress] = testData
    
    
    var body: some View {
        NavigationView {
            
            List {
                ForEach(exerciseProgressArray) { progress in
                    ProgressCardView(exercise: progress)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "plus")
                            .fontWeight(.heavy)
                    }
                    
                }
            }
        }
    }
}


struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressDashboardView()
    }
}
