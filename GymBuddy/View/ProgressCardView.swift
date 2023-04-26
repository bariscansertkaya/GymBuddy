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
                .fontWeight(.bold)
                .font(.headline)
            Spacer()
            HStack(spacing: 20) {
                Text(weight)
                    .frame(width: 50)
                Text(reps)
                    .frame(width: 50)
            }
        }
        .padding(.vertical,10)
    }
}

struct ProgressCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressCardView(name: "Bench Press", weight: "100", reps: "100")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
