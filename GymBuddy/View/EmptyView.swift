//
//  EmptyView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 2.05.2023.
//

import SwiftUI

struct EmptyView: View {
    
    @Binding var query: String
    
    var body: some View {
        Text("We couldn't find: \(query)")
    }
}

struct EmptyView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView(query: .constant("ASFSDG"))
    }
}
