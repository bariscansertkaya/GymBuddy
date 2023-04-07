//
//  OnboardingView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.04.2023.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        VStack {
            Text("Welcome to GymBuddy!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 100)
            
            Text("Track your progress, discover new exercises, and customize your workouts with our app.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 50)
                .padding(.top, 30)
            
            Spacer()
            
            HStack(spacing: 20) {
                Button(action: {
                    // Handle sign up button tapped
                    // Show the sign up screen
                }) {
                    Text("Sign Up")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 30)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    // Handle log in button tapped
                    // Show the log in screen
                }) {
                    Text("Log In")
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 30)
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.blue, lineWidth: 2)
                        )
                }
            }
            .padding(.bottom, 50)
        }
    }
}


struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
