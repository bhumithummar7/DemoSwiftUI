//
//  HomeHeaderView.swift
//  DemoSwiftUI
//
//  Created by Microloop Bhumi on 7/19/23.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Image("ic_placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
                Spacer()
                HStack{
                    Image("ic_location_brown")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    Text("Bintara, Bekasi")
                        .font(.custom(FontConstants.kLatoBold, size: 12))
                }
                Spacer()
                Text("").frame(width:40)
                Button(action: {
                }, label: {
                    Image("ic_Notification")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                  
                })
            }
        }.frame(height: 60)
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
