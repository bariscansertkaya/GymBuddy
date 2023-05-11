//
//  ExerciseListView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.05.2023.
//

import SwiftUI

struct ExerciseListView: View {
    var body: some View {
        NavigationStack {
            
            HStack {
                Text("Exercises")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.leading)
                
                Spacer()
            }
            
            ScrollView(.vertical,showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) {
                    NavigationLink {
                        ExerciseCategoryListView(selectedCategory: .chest)
                    } label: {
                        ExerciseCategoryRowView(imageName: "chest", titleText: "Chest")
                    }
                    NavigationLink {
                        ExerciseCategoryListView(selectedCategory: .back)
                    } label: {
                        ExerciseCategoryRowView(imageName: "back", titleText: "Back")
                    }
                    NavigationLink {
                        ExerciseCategoryListView(selectedCategory: .shoulders)
                    } label: {
                        ExerciseCategoryRowView(imageName: "shoulders", titleText: "Shoulders")
                    }
                    NavigationLink {
                        ExerciseCategoryListView(selectedCategory: .biceps)
                    } label: {
                        ExerciseCategoryRowView(imageName: "biceps", titleText: "Biceps")
                    }
                    NavigationLink {
                        ExerciseCategoryListView(selectedCategory: .triceps)
                    } label: {
                        ExerciseCategoryRowView(imageName: "triceps", titleText: "Triceps")
                    }
                    NavigationLink {
                        ExerciseCategoryListView(selectedCategory: .forearms)
                    } label: {
                        ExerciseCategoryRowView(imageName: "forearms", titleText: "Forearms")
                    }
                    NavigationLink {
                        ExerciseCategoryListView(selectedCategory: .abs)
                    } label: {
                        ExerciseCategoryRowView(imageName: "abs", titleText: "Abs")
                    }
                    NavigationLink {
                        ExerciseCategoryListView(selectedCategory: .legs)
                    } label: {
                        ExerciseCategoryRowView(imageName: "legs", titleText: "Legs")
                    }
                    
                }
            }
        }
    }
}

struct ExerciseListView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseListView()
    }
}
