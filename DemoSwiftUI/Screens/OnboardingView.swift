//
//  OnboardingView.swift
//  DemoSwiftUI
//
//  Created by Microloop Bhumi on 7/18/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTY
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    func setupAppearance() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor.init(named: ColorConstants.kBrownColor)
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.init(named: ColorConstants.kGrayD9D9D9)
      }
    var body: some View {
        ZStack {
            Image.init(ImageConstants.kOnboardingBackground)
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            VStack {
                Spacer()
                TabView {
                    OnboardingTabContainerView()
                    OnboardingTabContainerView()
                    OnboardingTabContainerView()
                }.tabViewStyle(PageTabViewStyle())
                    .frame(maxHeight: 250)
                    .onAppear {
                          setupAppearance()
                        }
                VStack {
                    Button(action: {
                        isOnboardingViewActive = false
                    }, label: {
                      Spacer()
                      Text("Get Started")
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
                }.padding(.top,20)
                    .padding(.bottom,60)
                    .padding([.leading,.trailing],40)
                
            }
            //: VStack
        }//: ZStack
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
