//
//  ProgressRingView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.04.2023.
//

import SwiftUI

struct ProgressRingView: View {
    var progress: Double
    var title: String
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20.0)
                .opacity(0.3)
                .foregroundColor(Color.gray)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color.blue)
                .rotationEffect(Angle(degrees: 270.0))
            
            Text("\(Int(progress * 100))%")
                .font(.title)
                .fontWeight(.bold)
            
            VStack {
                Spacer()
                Text(title)
                    .font(.headline)
            }
        }
        .frame(width: 150, height: 150)
    }
}


struct ProgressRingView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressRingView(progress: 100, title: "Zort")
    }
}
