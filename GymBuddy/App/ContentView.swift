//
//  ContentView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        
        ZStack {
            if(isOnboardingViewActive) {
                OnboardingView()
            }
            else {
                TabView {
                    ExerciseListView()
                        .tabItem {
                            Text("Exercises")
                            Image(systemName: "dumbbell")
                        }
                    WorkoutsView()
                        .tabItem {
                            Text("Workouts")
                            Image(systemName: "list.bullet.clipboard")
                        }
                    ProgressDashboardView()
                        .tabItem {
                            Text("Progress")
                            Image(systemName: "chart.bar")
                        }
                }
                
            }
        }
        .animation(.linear(duration: 0.5), value: isOnboardingViewActive)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
