//
//  CategoryButtonView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 3.05.2023.
//

import SwiftUI

struct CategoryButtonView: View {
    
    let name: String
    @Binding var category: Category
    
    var body: some View {
        Button {
            category = Category(rawValue: name) ?? .chest
        } label: {
            ZStack {
                Text(name)
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .heavy, design: .rounded))
                    .background(
                        Capsule()
                            .padding(-10)
                    )
                    .padding(.horizontal,10)
                    
            }
        }
        
    }
}

struct CategoryButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryButtonView(name: "Biceps" , category: .constant(.biceps))
    }
}
