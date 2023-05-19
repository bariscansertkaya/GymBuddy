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
                .frame(width: 100, height: 100)
                .scaledToFill()
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 100,height: 100)
                        .foregroundColor(.white)
                )
            
            VStack(alignment: .leading) {
                Text(titleText)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.leading,5)
                
            } //: VStacK
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .imageScale(.large)
                .fontWeight(.heavy)
        }
        .padding(.horizontal,5)
    }
    
    struct ExerciseCategoryRowView_Previews: PreviewProvider {
        static var previews: some View {
            ScrollView {
                ExerciseCategoryRowView(imageName: "biceps", titleText: "Chest")
                    .previewLayout(.sizeThatFits)
                    .padding()
            }
        }
    }
}
