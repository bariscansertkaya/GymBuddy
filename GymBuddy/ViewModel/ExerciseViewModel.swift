//
//  ExerciseViewModel.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 2.05.2023.
//

import SwiftUI

final class ExerciseViewModel: ObservableObject {
    
    private var data: [Exercise] = [
        Exercise(name: "Bench Press",
                 steps: ["Lie down on a flat bench with your feet planted firmly on the ground.","Grip the barbell with your hands slightly wider than shoulder-width apart, with your palms facing away from your face. Your thumbs should be wrapped around the bar.","Unrack the bar by lifting it off the rack and holding it straight above your chest with your arms extended.","Slowly lower the bar towards your chest by bending your elbows and keeping them tucked in close to your body.","Lower the bar until it touches your chest, or until your upper arms are parallel to the ground. Keep your elbows at a 45-degree angle to your body.","Pause for a moment at the bottom of the movement, then press the bar back up by extending your elbows and pushing the bar away from your chest.","Exhale as you press the bar up, and inhale as you lower it down."],
                 tips: ["Keep your wrists straight and in line with your forearms throughout the movement. Avoid letting your wrists bend backward, as this can put undue stress on them.","Squeeze your shoulder blades together and keep your shoulders down and back throughout the exercise. This helps stabilize your upper body and prevents your shoulders from hunching up towards your ears.","Make sure your elbows are tucked in close to your body throughout the exercise. Flaring your elbows out to the sides can put extra strain on your shoulder joints and increase your risk of injury.","Keep your head and neck neutral throughout the exercise. Avoid tucking your chin into your chest or craning your neck upwards, as this can cause strain on your neck muscles."],
                 imageName: "bench-press"),
        
        Exercise(name: "Incline Bench Press",
                 steps: [],
                 tips: [],
                 imageName: "incline-bench-press"),
        
        Exercise(name: "Squat",
                 steps: ["Start by standing with your feet shoulder-width apart, with your toes pointing slightly outwards. Keep your chest up and your shoulders back.","Engage your core muscles by pulling your belly button towards your spine.","Slowly lower your body by bending at the knees and hips, as if you are sitting down on a chair. Keep your weight on your heels and your knees pointing in the same direction as your toes.","Lower your body until your thighs are parallel to the ground, or as close as you can comfortably go. Make sure to keep your chest up and your back straight.","Pause for a moment at the bottom of the squat, then push through your heels and stand up to return to the starting position."],
                 tips: ["Keep your knees in line with your toes throughout the movement.","Don't let your knees collapse inward or outward.","Make sure to keep your back straight and your chest up throughout the exercise.","Keep your weight on your heels, not on your toes or the balls of your feet.","If you're having trouble keeping your balance, try holding onto a stable object like a chair or wall for support."],
                 imageName: "squat"),
        
        Exercise(name: "Deadlift",
                 steps: ["Stand with your feet hip-width apart and your toes pointed straight ahead.","Place your hands on the barbell with a grip that is slightly wider than shoulder-width apart. Your palms should be facing your thighs.","Bend your knees and lower your hips, keeping your back straight and your chest up. You should be in a squatting position with your shins close to the bar.","Take a deep breath and engage your core muscles.","Push through your heels and lift the bar off the ground by straightening your knees and hips.","Keep your back straight throughout the lift, and your shoulders pulled back and down.","Once you're standing up straight, lower the bar back down to the ground by bending your knees and hips, while keeping your back straight."],
                 tips: ["Keep your back straight throughout the lift. Avoid rounding your spine or hunching your shoulders forward, as this can cause strain on your lower back.","Keep the bar close to your body throughout the lift. This helps you maintain control of the weight and reduces the risk of injury.","Keep your knees in line with your toes throughout the lift. Don't let your knees collapse inward or outward.","Don't lock your knees at the top of the lift. This can put undue stress on your joints and increase your risk of injury.","Use a weight that you can control. It's important to start with a weight that you can lift comfortably with good form, and gradually increase the weight as you become more comfortable with the exercise."],
                 imageName: "deadlift"),
        
        Exercise(name: "Bent Over Row",
                 steps: ["Stand with your feet shoulder-width apart, holding a barbell with both hands using an overhand grip. Your hands should be slightly wider than shoulder-width apart.","Bend forward at the hips, keeping your back straight and your core engaged. Your torso should be parallel to the ground.","Let the barbell hang directly below your shoulders, with your arms fully extended and your palms facing down.","Keeping your elbows close to your body, pull the barbell up towards your chest. Your elbows should be pointing up and out as you do this. Make sure to exhale as you lift the weight.","Pause for a second at the top of the movement, squeezing your shoulder blades together.","Lower the weight back down to the starting position, inhaling as you do so."],
                 tips: ["Make sure to keep your back straight throughout the exercise, to avoid injury.","Use a weight that you can lift comfortably, but that still challenges you. It's better to start with a lighter weight and gradually increase as you get stronger.","Focus on squeezing your shoulder blades together at the top of the movement, to engage your back muscles fully.","Don't use momentum to lift the weight - instead, use a slow and controlled movement to get the most out of the exercise.","Keep your elbows close to your body throughout the exercise to ensure proper form and to avoid strain on your shoulders."],
                 imageName: "bent-over-row"),
        
        Exercise(name: "Dumbbell Curl", steps: [], tips: [], imageName: "dumbbell-curl"),
        
        Exercise(name: "Dumbbell Lateral Raise", steps: [], tips: [], imageName: "dumbbell-lateral-raise"),
        
        Exercise(name: "Dips", steps: [], tips: [], imageName: "dips"),
        
        Exercise(name: "Leg Extension", steps: [], tips: [], imageName: "leg-extension"),
        
        Exercise(name: "Leg Curl", steps: [], tips: [], imageName: "leg-curl")
    ]
    
    @Published var filteredData = [Exercise]()
    
    func search(with query: String = "") {
        filteredData = query.isEmpty ? data : data.filter { $0.name.contains(query)}
    }
}
