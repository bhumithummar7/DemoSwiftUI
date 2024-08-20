//
//  CoffeeSizeView.swift
//  DemoSwiftUI
//
//  Created by Microloop Bhumi on 7/27/23.
//

import SwiftUI

struct CoffeeSizeView: View {
    var isSelected: Bool
    var width:CGFloat
    @State var item : Item
    var body: some View {
        ZStack {
            HStack{
                Text(item.name).font(.custom(FontConstants.kLatoRegular, size: 16))
                    .foregroundColor(Color(isSelected ? ColorConstants.kWhite :ColorConstants.kGray3A3A3A))
            }.padding(8)
        }
        .frame(width: self.width)
        .background(isSelected ? Color(ColorConstants.kBrownColor) : Color.white)
            .clipShape(Capsule())
            .shadow(color: Color.black.opacity(0.25), radius: 4, x: 1, y: 0)
            
    }
}

struct CoffeeSizeView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeSizeView(isSelected: false, width: 200, item: Item.init(id: 0, name: "Small", image: "ic_ColdBrew", isSelected: false))
    }
}
