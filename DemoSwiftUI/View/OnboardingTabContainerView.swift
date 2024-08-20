//
//  OnboardingView.swift
//  DemoSwiftUI
//
//  Created by Microloop Bhumi on 7/14/23.
//

import SwiftUI

struct OnboardingTabContainerView: View {
    var body: some View {
        VStack(spacing: 15.0) {
            Text("Good coffee,\nGood friends,\nlet it blends")
                .multilineTextAlignment(.center)
                .font(.custom(FontConstants.kLatoBold, size: 28))
            .foregroundColor(.white)
            Text("The best grain, the finest roast,\n the most powerful flavor.")
                .multilineTextAlignment(.center)
                .font(.custom(FontConstants.kLatoRegular, size: 12))
            .foregroundColor(.white)
        }
    }
}

struct OnboardingTabContainerView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.black)
    }
}
