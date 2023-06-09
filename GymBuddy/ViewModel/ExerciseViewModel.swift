//
//  ExerciseViewModel.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 2.05.2023.
//

import SwiftUI

final class ExerciseViewModel: ObservableObject {
    
    @Published var data: [Exercise] = [
        Exercise(name: "Bench Press",
                 steps: ["Lie down on a flat bench with your feet planted firmly on the ground.","Grip the barbell with your hands slightly wider than shoulder-width apart, with your palms facing away from your face. Your thumbs should be wrapped around the bar.","Unrack the bar by lifting it off the rack and holding it straight above your chest with your arms extended.","Slowly lower the bar towards your chest by bending your elbows and keeping them tucked in close to your body.","Lower the bar until it touches your chest, or until your upper arms are parallel to the ground. Keep your elbows at a 45-degree angle to your body.","Pause for a moment at the bottom of the movement, then press the bar back up by extending your elbows and pushing the bar away from your chest.","Exhale as you press the bar up, and inhale as you lower it down."],
                 tips: ["Keep your wrists straight and in line with your forearms throughout the movement. Avoid letting your wrists bend backward, as this can put undue stress on them.","Squeeze your shoulder blades together and keep your shoulders down and back throughout the exercise. This helps stabilize your upper body and prevents your shoulders from hunching up towards your ears.","Make sure your elbows are tucked in close to your body throughout the exercise. Flaring your elbows out to the sides can put extra strain on your shoulder joints and increase your risk of injury.","Keep your head and neck neutral throughout the exercise. Avoid tucking your chin into your chest or craning your neck upwards, as this can cause strain on your neck muscles."],
                 imageName: "bench-press",
                 category: .chest),
        
        Exercise(name: "Incline Bench Press",
                 steps: ["Lie on an incline bench with your feet flat on the ground and your back, head, and butt supported by the bench. The bench should be set at a 45-degree angle or less.","Grasp the barbell with a slightly wider than shoulder-width grip, and lift it off the rack, holding it over your chest with your arms extended.","Inhale and lower the bar towards your upper chest, keeping your elbows tucked in towards your sides and your wrists straight.","Once the barbell touches your chest, exhale and push it back up to the starting position, keeping your back and core engaged throughout the movement."],
                 tips: ["Use a weight that allows you to maintain good form throughout the exercise.","Keep your elbows tucked in towards your sides, rather than flaring them out, to engage your chest muscles more effectively and reduce the risk of shoulder injury.","Focus on lowering the barbell slowly and under control to maximize muscle activation.","Don't bounce the barbell off your chest at the bottom of the movement; instead, pause briefly before pushing the barbell back up.","Maintain a neutral spine position and avoid arching your back excessively to prevent strain on your lower back."],
                 imageName: "incline-bench-press",
                 category: .chest),
        
        Exercise(name: "Squat",
                 steps: ["Start by standing with your feet shoulder-width apart, with your toes pointing slightly outwards. Keep your chest up and your shoulders back.","Engage your core muscles by pulling your belly button towards your spine.","Slowly lower your body by bending at the knees and hips, as if you are sitting down on a chair. Keep your weight on your heels and your knees pointing in the same direction as your toes.","Lower your body until your thighs are parallel to the ground, or as close as you can comfortably go. Make sure to keep your chest up and your back straight.","Pause for a moment at the bottom of the squat, then push through your heels and stand up to return to the starting position."],
                 tips: ["Keep your knees in line with your toes throughout the movement.","Don't let your knees collapse inward or outward.","Make sure to keep your back straight and your chest up throughout the exercise.","Keep your weight on your heels, not on your toes or the balls of your feet.","If you're having trouble keeping your balance, try holding onto a stable object like a chair or wall for support."],
                 imageName: "squat",
                 category: .legs),
        
        Exercise(name: "Deadlift",
                 steps: ["Stand with your feet hip-width apart and your toes pointed straight ahead.","Place your hands on the barbell with a grip that is slightly wider than shoulder-width apart. Your palms should be facing your thighs.","Bend your knees and lower your hips, keeping your back straight and your chest up. You should be in a squatting position with your shins close to the bar.","Take a deep breath and engage your core muscles.","Push through your heels and lift the bar off the ground by straightening your knees and hips.","Keep your back straight throughout the lift, and your shoulders pulled back and down.","Once you're standing up straight, lower the bar back down to the ground by bending your knees and hips, while keeping your back straight."],
                 tips: ["Keep your back straight throughout the lift. Avoid rounding your spine or hunching your shoulders forward, as this can cause strain on your lower back.","Keep the bar close to your body throughout the lift. This helps you maintain control of the weight and reduces the risk of injury.","Keep your knees in line with your toes throughout the lift. Don't let your knees collapse inward or outward.","Don't lock your knees at the top of the lift. This can put undue stress on your joints and increase your risk of injury.","Use a weight that you can control. It's important to start with a weight that you can lift comfortably with good form, and gradually increase the weight as you become more comfortable with the exercise."],
                 imageName: "deadlift",
                 category: .back),
        
        Exercise(name: "Bent Over Row",
                 steps: ["Stand with your feet shoulder-width apart, holding a barbell with both hands using an overhand grip. Your hands should be slightly wider than shoulder-width apart.","Bend forward at the hips, keeping your back straight and your core engaged. Your torso should be parallel to the ground.","Let the barbell hang directly below your shoulders, with your arms fully extended and your palms facing down.","Keeping your elbows close to your body, pull the barbell up towards your chest. Your elbows should be pointing up and out as you do this. Make sure to exhale as you lift the weight.","Pause for a second at the top of the movement, squeezing your shoulder blades together.","Lower the weight back down to the starting position, inhaling as you do so."],
                 tips: ["Make sure to keep your back straight throughout the exercise, to avoid injury.","Use a weight that you can lift comfortably, but that still challenges you. It's better to start with a lighter weight and gradually increase as you get stronger.","Focus on squeezing your shoulder blades together at the top of the movement, to engage your back muscles fully.","Don't use momentum to lift the weight - instead, use a slow and controlled movement to get the most out of the exercise.","Keep your elbows close to your body throughout the exercise to ensure proper form and to avoid strain on your shoulders."],
                 imageName: "bent-over-row",
                 category: .back),
        
        Exercise(name: "Dumbbell Curl",
                 steps: ["Stand with your feet shoulder-width apart, holding a dumbbell in each hand with your palms facing forward.","Keep your elbows close to your sides, and raise the dumbbells towards your shoulders, exhaling as you lift.","Squeeze your biceps at the top of the movement, then slowly lower the dumbbells back down to the starting position while inhaling."],
                 tips: ["Use a weight that you can lift comfortably, but that still challenges you. It's better to start with a lighter weight and gradually increase as you get stronger.","Keep your elbows close to your sides throughout the exercise to ensure proper form and to avoid strain on your shoulders.","Don't use momentum to lift the weight - instead, use a slow and controlled movement to get the most out of the exercise.","Focus on squeezing your biceps at the top of the movement to engage them fully.","To further activate your biceps, you can twist your wrists slightly as you curl the dumbbells up towards your shoulders.","Don't swing your body or use your back to lift the weight, as this can lead to injury and reduce the effectiveness of the exercise."],
                 imageName: "dumbbell-curl",
                 category: .biceps),
        
        Exercise(name: "Dumbbell Lateral Raise",
                 steps: ["Stand with your feet shoulder-width apart, holding a dumbbell in each hand with your palms facing inward towards your thighs.","Keep your back straight, core engaged, and arms straight with a slight bend in your elbows.","Raise your arms out to the sides, keeping them straight, until they are parallel to the ground.","Pause briefly at the top of the movement, then slowly lower the dumbbells back down to the starting position while inhaling."],
                 tips: ["Use a weight that you can lift comfortably, but that still challenges you. It's better to start with a lighter weight and gradually increase as you get stronger.","Don't use momentum to lift the weight - instead, use a slow and controlled movement to get the most out of the exercise.","Avoid shrugging your shoulders as you lift the dumbbells, as this can shift the focus away from your lateral deltoids.","Keep your elbows slightly bent throughout the exercise to reduce the risk of shoulder injury.","To further activate your lateral deltoids, you can slightly tilt your torso forward as you raise the dumbbells out to the sides.","You can also perform this exercise one arm at a time to isolate each shoulder individually."],
                 imageName: "dumbbell-lateral-raise",
                 category: .shoulders),
        
        Exercise(name: "Dips",
                 steps: ["Stand between two parallel bars or dip bars, facing away from them.","Reach back and grip the bars with your palms facing down and your arms fully extended.","Lift your feet off the ground, and cross your ankles behind you.","Slowly lower your body by bending your elbows and leaning forward, keeping your chest up and your shoulders back.","Lower yourself until your upper arms are parallel to the ground, then push yourself back up to the starting position by straightening your arms."],
                 tips: ["Use a dip bar or parallel bars that are sturdy and can support your body weight.","Start with your feet on the ground and your knees bent if you're new to the exercise, or if you're having trouble performing it with good form.","Keep your chest up and your shoulders back throughout the exercise to maintain proper form and prevent strain on your shoulders.","Don't lock out your elbows at the top of the movement, as this can lead to injury.","Keep your elbows close to your sides as you lower yourself to engage your triceps more effectively.","As you get stronger, you can increase the difficulty of the exercise by adding weight with a weight belt, or by straightening your legs and lifting your feet off the ground."],
                 imageName: "dips",
                 category: .chest),
        
        Exercise(name: "Leg Extension",
                 steps: ["Sit on a leg extension machine with your back against the backrest, and adjust the pad so that it rests comfortably against your shins, just above your ankles.","Grasp the handles on either side of the seat for support, and keep your feet pointed forward.","Extend your legs and lift the weight by pushing the pad away from your shins, exhaling as you lift.","Pause briefly at the top of the movement, then slowly lower the weight back down to the starting position while inhaling."],
                 tips: ["Use a weight that you can lift comfortably, but that still challenges you. It's better to start with a lighter weight and gradually increase as you get stronger.","Keep your back against the backrest throughout the exercise to maintain proper form and prevent strain on your lower back.","Don't lock out your knees at the top of the movement, as this can lead to injury.","Focus on squeezing your quadriceps at the top of the movement to engage them fully.","Avoid using momentum to lift the weight - instead, use a slow and controlled movement to get the most out of the exercise.","Keep your feet pointed forward throughout the exercise to avoid straining your knees."],
                 imageName: "leg-extension",
                 category: .legs),
        
        Exercise(name: "Leg Curl",
                 steps: ["Lie face down on a leg curl machine, with your knees just off the edge of the bench and your ankles hooked under the padded bar.","Grasp the handles on either side of the bench for support.","Keep your legs straight and your toes pointed, and contract your hamstrings to lift the padded bar up towards your buttocks, exhaling as you lift.","Pause briefly at the top of the movement, then slowly lower the padded bar back down to the starting position while inhaling."],
                 tips: ["Use a weight that you can lift comfortably, but that still challenges you. It's better to start with a lighter weight and gradually increase as you get stronger.","Keep your knees just off the edge of the bench throughout the exercise to maintain proper form and prevent strain on your knees.","Don't arch your back or lift your hips off the bench - keep your torso and hips stationary throughout the exercise.","Focus on squeezing your hamstrings at the top of the movement to engage them fully.","Avoid using momentum to lift the weight - instead, use a slow and controlled movement to get the most out of the exercise.","Keep your toes pointed throughout the exercise to engage your hamstrings more effectively."],
                 imageName: "leg-curl",
                 category: .legs),
        
        Exercise(name: "Shoulder Press",
                 steps: ["Start by standing with your feet shoulder-width apart and the barbell resting on the front of your shoulders (the rack position) with an overhand grip. Your hands should be slightly wider than shoulder-width apart.","Engage your core, keep your back straight, and maintain a slight bend in your knees.","Take a deep breath, brace your core, and press the barbell overhead by extending your arms straight up.","As you lift the barbell, make sure to keep your elbows slightly forward and aligned with your wrists.","Once the barbell is fully extended overhead, pause briefly at the top of the movement.","Lower the barbell back down to the starting position by bending your elbows and bringing it back to the front of your shoulders, while inhaling."],
                 tips: ["Use a weight that allows you to maintain proper form throughout the exercise.","Keep your core engaged and maintain a stable, upright posture throughout the movement.","Avoid excessive arching of your back or leaning backward as you press the barbell overhead.","Maintain control throughout the exercise, avoiding any jerking or swinging motions.","Ensure that the barbell travels in a straight line directly overhead, without drifting forward or backward.","Focus on maintaining stability and balance throughout the exercise."],
                 imageName: "shoulder-press",
                 category: .shoulders),
        
        Exercise(name: "Pull Ups",
                 steps: ["Find a pull-up bar or a sturdy horizontal bar that can support your body weight.","Stand beneath the bar and reach up, gripping it with an overhand grip (palms facing away from you) and your hands slightly wider than shoulder-width apart.","Hang from the bar with your arms fully extended, your shoulders relaxed, and your core engaged.","From the hanging position, exhale and pull your body upward by bending your elbows and squeezing your shoulder blades together.","Continue pulling until your chin is above the bar or as close to it as possible.","Pause briefly at the top of the movement, then slowly lower yourself back down to the starting position while inhaling."],
                 tips: ["If you are unable to perform a full pull-up, you can start with assisted pull-ups using resistance bands or an assisted pull-up machine.","Keep your body straight throughout the movement, avoiding excessive swinging or kipping motions.","Engage your core muscles to maintain stability and prevent excessive swinging.","Focus on using your back and arm muscles to initiate and control the movement.","Keep your elbows pointing downward and slightly back to engage your back muscles effectively.","If you find it challenging to perform multiple repetitions, you can break them down into sets with short rest periods in between."],
                 imageName: "pull-ups",
                 category: .shoulders),
        
        Exercise(name: "Cable Row",
                 steps: ["Sit on the seat of a cable row machine, with your feet flat on the footrests or on the ground, and your knees slightly bent.","Adjust the footrests or footplates to a position that allows you to maintain a stable and comfortable position.","Grasp the handles or the attachment with an overhand grip (palms facing down), and sit up tall with your back straight.","Extend your arms fully in front of you, keeping a slight bend in your elbows.","Inhale, brace your core, and pull the handles or attachment towards your midsection, squeezing your shoulder blades together.","Keep your elbows close to your sides as you pull, and aim to bring the handles or attachment to your lower chest or upper abdominal area.","Pause for a moment at the fully contracted position, feeling the contraction in your back muscles.","Slowly extend your arms back to the starting position, maintaining control throughout the movement, and exhale as you return to the starting position."],
                 tips: ["Adjust the weight stack or resistance to a level that allows you to perform the exercise with proper form and without straining.","Keep your back straight and avoid rounding your shoulders or slouching forward during the movement.","Engage your core throughout the exercise to maintain stability and prevent excessive movement.","Focus on pulling with your back muscles, particularly the muscles between your shoulder blades.","Avoid using momentum to complete the movement. Instead, focus on a slow and controlled motion, emphasizing the contraction of your back muscles.","Experiment with different hand grips or attachments to target your back muscles from different angles."],
                 imageName: "cable-row",
                 category: .back)
        
    ]
    
    @Published var filteredData = [Exercise]()
    
    func search(with query: String = "") {
        filteredData = query.isEmpty ? data : data.filter { $0.name.contains(query)}
    }
    
    func searchWithCategory(with category: Category) {
        filteredData = category == .all ? data : data.filter { $0.category == category}
    }
}
