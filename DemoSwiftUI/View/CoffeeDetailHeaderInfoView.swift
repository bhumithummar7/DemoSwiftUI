//
//  CoffeeDetailHeaderInfoView.swift
//  DemoSwiftUI
//
//  Created by Microloop Bhumi on 7/26/23.
//

import SwiftUI

struct CoffeeDetailHeaderInfoView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text("Cappuccino")
                    .foregroundColor(Color.white)
                    .font(.custom(FontConstants.kLatoBold, size: 28))
                Text("With Chocolate")
                    .foregroundColor(Color.white)
                    .font(.custom(FontConstants.kLatoRegular, size: 12))
            }
            Spacer()
            HStack(){
                Image("ic_star")
                    .resizable()
                    .frame(width: 15, height: 15)
                Text("4.7").font(.custom(FontConstants.kLatoBold, size: 16))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
            }.padding(8)
                .background(Color(ColorConstants.kBrownColor))
            .clipShape(Capsule())
        }.padding()
    }
}

struct CoffeeDetailHeaderInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeDetailHeaderInfoView()
    }
}
