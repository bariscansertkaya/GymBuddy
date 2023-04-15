//
//  Progress.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 15.04.2023.
//

import SwiftUI

struct ExerciseProgress: Identifiable {
    let id = UUID()
    let name:String
    let weight:String
    let reps:String
    
    
}

let testData: [ExerciseProgress] = [
    ExerciseProgress(name: "Bench Press", weight: "100", reps: "3x12"),
    ExerciseProgress(name: "Squat", weight: "100", reps: "3x12"),
    ExerciseProgress(name: "Incline Bench Press", weight: "100", reps: "3x12")
]

    
