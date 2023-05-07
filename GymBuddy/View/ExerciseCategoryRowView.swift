//
//  ExerciseCategoryRowView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.05.2023.
//

import SwiftUI

struct ExerciseCategoryRowView: View {
    
    let imageName:String
    let titleText:String
    
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
                .scaledToFit()
                .background(
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 95,height: 95)
                        .foregroundColor(.white)
                )
                
                
            
            VStack(alignment: .leading) {
                Text(titleText)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
            } //: VStacK
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .imageScale(.large)
                .fontWeight(.heavy)
        }
    }
    
    struct ExerciseCategoryRowView_Previews: PreviewProvider {
        static var previews: some View {
            ScrollView {
                ExerciseCategoryRowView(imageName: "biceps", titleText: "Chest")
                    .previewLayout(.sizeThatFits)
                    .padding()
                ExerciseCategoryRowView(imageName: "shoulders", titleText: "Chest")
                    .previewLayout(.sizeThatFits)
                    .padding()
            }
        }
    }
}
