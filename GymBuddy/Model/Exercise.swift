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
    let steps: [String]
    let imageName: String
    
    static func all() -> [Exercise] {
        [
            Exercise(name: "Squat",
                     steps: ["Start by standing with your feet shoulder-width apart, with your toes pointing slightly outwards. Keep your chest up and your shoulders back.","Engage your core muscles by pulling your belly button towards your spine.","Slowly lower your body by bending at the knees and hips, as if you are sitting down on a chair. Keep your weight on your heels and your knees pointing in the same direction as your toes.","Lower your body until your thighs are parallel to the ground, or as close as you can comfortably go. Make sure to keep your chest up and your back straight.","Pause for a moment at the bottom of the squat, then push through your heels and stand up to return to the starting position.","Repeat for the desired number of repetitions."],
                     imageName: "squat"),
        ]
    }
}
