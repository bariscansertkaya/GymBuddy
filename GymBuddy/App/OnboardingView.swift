//
//  OnboardingView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.04.2023.
//

import SwiftUI

struct OnboardingView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        
        TabView {
            PageView(imageName: "figure.run",
                     titleText: "Welcome to GymBuddy",
                     subtitleText: "Your ultimate guide to exercise and progress tracking")
            
            PageView(imageName: "dumbbell",
                     titleText: "Exercises",
                     subtitleText: "Discover a world of exercises")
            
            PageView(imageName: "list.bullet.clipboard",
                     titleText: "Workouts",
                     subtitleText: "Create your perfect workout")
            
            VStack {
                PageView(imageName: "chart.bar",
                         titleText: "Progress",
                         subtitleText: "Track your fitness journey with ease.")
                
                Button {
                    isOnboardingViewActive = false
                } label: {
                    Text("Get Started")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 30)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }

                }
            }
            .tabViewStyle(.page)
        }
    }


struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
