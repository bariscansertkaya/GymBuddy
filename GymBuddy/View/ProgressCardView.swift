//
//  ProgressCardView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 15.04.2023.
//

import SwiftUI

struct ProgressCardView: View {
    let exercise: ProgressEntry
    
    var body: some View {
        HStack {
            Text(exercise.name)
                .fontWeight(.bold)
                .font(.headline)
            Spacer()
            HStack(spacing: 20) {
                Text(exercise.weight)
                    .frame(width: 50)
                Text(exercise.reps)
                    .frame(width: 50)
            }
        }
        .padding(.vertical,10)
    }
}

struct ProgressCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressCardView(exercise: testData[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
