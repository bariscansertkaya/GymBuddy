//
//  Progress.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 15.04.2023.
//

import SwiftUI

struct ProgressEntry: Identifiable,Equatable {
    let id = UUID()
    var name:String
    var weight:String
    var reps:String
    
    
}

let testData: [ProgressEntry] = [
    ProgressEntry(name: "Bench Press", weight: "100", reps: "3x12"),
    ProgressEntry(name: "Squat", weight: "100", reps: "3x12"),
    ProgressEntry(name: "Incline Bench Press", weight: "100", reps: "3x12")
]

    
