//
//  Exercise.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.04.2023.
//

import Foundation

public enum Category:String {
    case chest = "Chest"
    case shoulders = "Shoulders"
    case biceps = "Biceps"
    case triceps = "Triceps"
    case abs = "Abs"
    case legs = "Legs"
    case back = "Back"
    case all = "All"
}

struct Exercise: Identifiable,Hashable {
    let id = UUID()
    let name: String
    let steps: [String]
    let tips: [String]
    let imageName: String
    let category: Category
}

let testData = [
    Exercise(name: "Bench Press",
             steps: ["Lie down on a flat bench with your feet planted firmly on the ground.","Grip the barbell with your hands slightly wider than shoulder-width apart, with your palms facing away from your face. Your thumbs should be wrapped around the bar.","Unrack the bar by lifting it off the rack and holding it straight above your chest with your arms extended.","Slowly lower the bar towards your chest by bending your elbows and keeping them tucked in close to your body.","Lower the bar until it touches your chest, or until your upper arms are parallel to the ground. Keep your elbows at a 45-degree angle to your body.","Pause for a moment at the bottom of the movement, then press the bar back up by extending your elbows and pushing the bar away from your chest.","Exhale as you press the bar up, and inhale as you lower it down."],
             tips: ["Keep your wrists straight and in line with your forearms throughout the movement. Avoid letting your wrists bend backward, as this can put undue stress on them.","Squeeze your shoulder blades together and keep your shoulders down and back throughout the exercise. This helps stabilize your upper body and prevents your shoulders from hunching up towards your ears.","Make sure your elbows are tucked in close to your body throughout the exercise. Flaring your elbows out to the sides can put extra strain on your shoulder joints and increase your risk of injury.","Keep your head and neck neutral throughout the exercise. Avoid tucking your chin into your chest or craning your neck upwards, as this can cause strain on your neck muscles."],
             imageName: "bench-press", category: .chest)
]
