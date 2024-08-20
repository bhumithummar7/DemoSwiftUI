//
//  SpecialOfferView.swift
//  DemoSwiftUI
//
//  Created by Microloop Bhumi on 7/20/23.
//

import SwiftUI

struct SpecialOfferView: View {
    var body: some View {
        ZStack {
            ZStack {
                HStack(alignment: .top) {
                    Image("ic_special_offer_placeholder").resizable()
                    .frame(width: 138,height: 106)
                    .cornerRadius(15)
                    
                    VStack(alignment: .leading){
                    HStack{
                    Text("Limited").foregroundColor(Color.white)
                    .font(.custom(FontConstants.kLatoBold, size: 8))
                    .padding(5)
                    .background(Color(ColorConstants.kBrownColor))
                    .clipShape(Capsule())
                    }
                    
                    Text("Buy 1 get 1 free\nif you buy with Gopay").font(.custom(FontConstants.kLatoBold, size: 16))
                    }
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .background(Color.white)
            .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.25), radius: 3, x: 2, y: 1)
        }.padding(3)
    }
}

struct SpecialOfferView_Previews: PreviewProvider {
    static var previews: some View {
        SpecialOfferView()
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
}
