//
//  ProfileView.swift
//  DemoSwiftUI
//
//  Created by Microloop Bhumi on 7/18/23.
//

import SwiftUI

struct ProfileView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    var body: some View {
        VStack {
            Button(action: {
                isOnboardingViewActive = true
            }, label: {
              Spacer()
              Text("Logout")
                    .font(.custom(FontConstants.kLatoBold, size: 20))
                .fontWeight(.bold)
                .foregroundColor(.white)
              Spacer()
            }) //: BUTTON
            .padding(20)
            .background(
                Color(ColorConstants.kBrownColor)
            )
            .clipShape(Capsule())
        }.padding(.horizontal,40)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
