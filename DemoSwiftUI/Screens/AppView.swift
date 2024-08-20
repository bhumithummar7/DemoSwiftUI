//
//  AppView.swift
//  DemoSwiftUI
//
//  Created by Microloop Bhumi on 7/18/23.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
          HomeView()
            .tabItem({
              Image("ic_tab_home")
              Text("Home")
            })
          FavouriteView()
            .tabItem({
              Image("ic_tab_favorite")
              Text("Favourite")
            })
          CartView()
            .tabItem({
              Image("ic_tab_cart")
              Text("Cart")
            })
          ProfileView()
            .tabItem({
              Image("ic_tab_profile")
              Text("Profile")
            })
        }
        .accentColor(Color(ColorConstants.kBrownColor))
        .onAppear() {
            UITabBar.appearance().backgroundColor = UIColor.init(named: ColorConstants.kGrayF8F7FA)
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
