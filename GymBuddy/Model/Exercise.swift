//
//  Exercise.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.04.2023.
//

import Foundation

struct Exercise: Identifiable,Hashable {
    let id = UUID()
    let name: String
    let description: String
    let imageName: String
    let isPopular: Bool
    
    static func all() -> [Exercise] {
        [
            Exercise(name: "Squat", description: "Stand with feet shoulder-width apart and lower down into a squat, keeping your chest up and your knees over your toes.", imageName: "squat", isPopular: true),
            Exercise(name: "Push-Up", description: "Start in a plank position with your hands shoulder-width apart. Lower your chest down towards the ground, keeping your elbows close to your body.", imageName: "push-up", isPopular: true),
            Exercise(name: "Deadlift", description: "Stand with feet hip-width apart and a weight in front of you. Hinge at the hips and lower down to pick up the weight, keeping your back straight.", imageName: "deadlift", isPopular: true),
            Exercise(name: "Running", description: "Jog or run at a steady pace for a certain amount of time or distance.", imageName: "running", isPopular: true),
            Exercise(name: "Jumping Jacks", description: "Jump your legs out wide and clap your hands above your head, then jump back to starting position.", imageName: "jumping_jacks", isPopular: true)
        ]
    }
}
