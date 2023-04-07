//
//  HomeView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.04.2023.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - Properties
    
    let exercises = Exercise.all()
    let workouts = Workout.all()
    
    // MARK: - UI Elements
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Featured Workouts")
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding(.leading)
                    
                    ForEach(workouts.filter { $0.isFeatured }) { workout in
                        NavigationLink(destination: WorkoutDetailView(workout: workout)) {
                            WorkoutCardView(workout: workout)
                        }
                    }
                    .padding()
                    
                    Text("Popular Exercises")
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding(.leading)
                    
                    ForEach(exercises.filter { $0.isPopular }) { exercise in
                        NavigationLink(destination: ExerciseDetailView(exercise: exercise)) {
                            ExerciseCardView(exercise: exercise)
                        }
                    }
                    .padding()
                }
            }
            .navigationBarTitle("Home")
        }
    }
}

struct WorkoutCardView: View {
    let workout: Workout
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(workout.imageName)
                .resizable()
                .scaledToFit()
            
            Text(workout.name)
                .font(.headline)
                .fontWeight(.bold)
            
            Text(workout.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct ExerciseCardView: View {
    let exercise: Exercise
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(exercise.imageName)
                .resizable()
                .frame(width: 120, height: 120)
                .cornerRadius(10)
            
            Text(exercise.name)
                .font(.headline)
                .fontWeight(.bold)
            
            Text(exercise.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct WorkoutDetailView: View {
    let workout: Workout
    
    var body: some View {
        VStack {
            Image(workout.imageName)
                .resizable()
                .scaledToFit()
            
            Text(workout.name)
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            Text(workout.description)
                .font(.body)
                .multilineTextAlignment(.leading)
                .padding()
            
            Spacer()
        }
        .navigationBarTitle(workout.name)
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
