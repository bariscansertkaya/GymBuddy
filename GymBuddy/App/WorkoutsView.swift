//
//  WorkoutsView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.04.2023.
//

import SwiftUI

struct WorkoutsView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true

    var body: some View {
        Button {
            isOnboardingViewActive = true
        } label: {
            Text("Activate Onboarding")
        }

    }
}


struct WorkoutsView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutsView()
    }
}
