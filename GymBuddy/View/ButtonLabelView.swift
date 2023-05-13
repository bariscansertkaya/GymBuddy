//
//  ButtonLabelView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 13.05.2023.
//

import SwiftUI

struct ButtonLabelView: View {
    
    let name:String
    let width:CGFloat
    let height:CGFloat
    
    
    var body: some View {
        Text(name)
            .fontWeight(.heavy)
            .foregroundColor(.white)
            .font(.title)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.accentColor)
                    .frame(width: width, height: height, alignment: .center)
            )
    }
}

struct ButtonLabelView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLabelView(name: "DENEMEEE",width: 200,height: 200)
    }
}
