//
//  PageView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 24.04.2023.
//

import SwiftUI

struct PageView: View {
    
    let imageName:String
    let titleText:String
    let subtitleText:String
    
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 150,height: 150)
                .padding(.vertical)
                .foregroundColor(.accentColor)
            Text(titleText)
                .font(.title)
                .padding()
            Text(subtitleText)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .font(.title2)
                .padding()
        }
        
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(imageName: "dumbbell", titleText: "Welcome to GymBuddy",subtitleText: "Your ultimate guide to exercises and progress tracking")
    }
}
