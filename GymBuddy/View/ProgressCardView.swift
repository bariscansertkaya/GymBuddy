//
//  ProgressCardView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 15.04.2023.
//

import SwiftUI

struct ProgressCardView: View {
    
    let name:String
    let weight:String
    let reps:String
    
    var body: some View {
        HStack {
            
            Text(name)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.accentColor)
                .frame(width: 200, alignment: .leading)
                .padding(.leading,5)
            
            Spacer()
            
            Text(weight)
                .font(.title3)
                .fontWeight(.bold)
                .frame(width: 60, alignment: .center)
            
            Spacer()
            
            Text(reps)
                .font(.title3)
                .fontWeight(.bold)
                .frame(width: 50, alignment: .trailing)
        }
        .padding(.vertical,10)
    }
}

struct ProgressCardView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            ProgressCardView(name: "Incline Bench Press", weight: "100", reps: "3x12")
                .previewLayout(.sizeThatFits)
                .padding()
            ProgressCardView(name: "Squat", weight: "120", reps: "3x12")
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
