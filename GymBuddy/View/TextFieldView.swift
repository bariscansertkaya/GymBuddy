//
//  TextFieldView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 13.05.2023.
//

import SwiftUI

struct TextFieldView: View {
    let name:String
    @Binding var text:String
    
    var body: some View {
        
        TextField(name, text: $text)
            .frame(width: 360, height: 40, alignment: .center)
            .multilineTextAlignment(.center)
            .font(.title2)
            .background(Color(UIColor.systemGray5))
            .cornerRadius(8)
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(name: "Name", text: .constant(""))
    }
}
