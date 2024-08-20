//
//  ContentView.swift
//  DemoSwiftUI
//
//  Created by Microloop Bhumi on 7/14/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
          if isOnboardingViewActive {
            OnboardingView()
          } else {
            AppView()
          }
        }
      }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
