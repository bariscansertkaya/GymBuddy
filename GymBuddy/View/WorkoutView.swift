//
//  WorkoutView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 27.04.2023.
//

import SwiftUI

struct WorkoutView: View {
    
    let titleText:String
    let exercises:[String]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(titleText)
                .font(.title)
                .fontWeight(.bold)
                .padding(.vertical,2)
                .foregroundColor(.accentColor)
            ForEach(exercises,id: \.self) { exercise in
                HStack{
                    Text(exercise)
                        .fontWeight(.bold)
                        .padding(.vertical,10)
                    Spacer()
                }
                .background(
                    Color.gray
                        .opacity(0.25)
                        .cornerRadius(8)
                        .padding(.horizontal,-10)
                )
                
            }
        }
        .padding(.horizontal,20)
        
    }
    
    struct WorkoutView_Previews: PreviewProvider {
        static var previews: some View {
            WorkoutView(titleText: "Push", exercises: ["Bench Press","Shoulder Press","Cable Extension"])
                .previewLayout(.sizeThatFits)
        }
    }
}
