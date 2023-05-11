//
//  ExerciseDetailView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.04.2023.
//

import SwiftUI

struct ExerciseDetailView: View {
    let exercise: Exercise
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            Image(exercise.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 360, height: 360)
                .cornerRadius(12)
            
            Text(exercise.name)
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .fontWeight(.bold)
                .padding(.horizontal)
                .padding(.vertical,5)
                .foregroundColor(.accentColor)
            
            VStack(alignment: .leading) {
                ForEach(0..<exercise.steps.count, id: \.self) { i in
                    HStack {
                        ZStack {
                            Circle()
                                .frame(width: 40,height: 40)
                                .foregroundColor(.accentColor)
                                .padding(.horizontal,5)
                            Text("\(i+1)")
                                .font(.title)
                                .fontWeight(.bold)
                        }
                        Text(exercise.steps[i])
                    }
                }
            }
            
            Divider()
            
            Text("Tips")
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .fontWeight(.bold)
                .padding(.horizontal)
                .padding(.vertical,5)
                .foregroundColor(.accentColor)
            
            VStack(alignment: .leading) {
                ForEach(exercise.tips, id: \.self) { tip in
                    HStack {
                        Circle()
                            .foregroundColor(.accentColor)
                            .frame(width: 10,height: 10)
                            .padding(.horizontal)
                        Text(tip)
                    }
                    
                }
            }
            
        }
    }
}


struct ExerciseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseDetailView(exercise: testData[0])
    }
}
