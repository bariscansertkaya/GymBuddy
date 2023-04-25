//
//  Workout.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.04.2023.
//

import Foundation

struct Workout: Identifiable {
    let id = UUID()
    let name: String
    let exercises: [Exercise]
    
}
