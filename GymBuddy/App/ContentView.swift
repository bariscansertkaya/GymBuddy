//
//  ContentView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Text("Home")
                    Image(systemName: "house")
                }
            ExercisesView()
                .tabItem {
                    Text("Exercises")
                    Image(systemName: "dumbbell")
                }
            WorkoutsView()
                .tabItem {
                    Text("Workouts")
                    Image(systemName: "list.bullet.clipboard")
                }
            ProgressView()
                .tabItem {
                    Text("Progress")
                    Image(systemName: "chart.bar")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
