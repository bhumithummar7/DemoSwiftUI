//
//  CategoriesTabView.swift
//  DemoSwiftUI
//
//  Created by Microloop Bhumi on 7/21/23.
//

import SwiftUI

struct CategoriesTabView: View {
    var isSelected: Bool
    @State var item : Item
    var body: some View {
        ZStack {
            HStack{
                if item.image != ""{
                    Image(item.image)
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color(isSelected ? ColorConstants.kWhite :ColorConstants.kGray3A3A3A))
                }
                Text(item.name).font(.custom(FontConstants.kLatoBold, size: 12))
                    .foregroundColor(Color(isSelected ? ColorConstants.kWhite :ColorConstants.kGray3A3A3A))
            }.padding(8)
        }.background(isSelected ? Color(ColorConstants.kBrownColor) : Color.clear)
            .clipShape(Capsule())
            
    }
}

struct CategoriesTabView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesTabView(isSelected: false, item: Item.init(id: 0, name: "Cold Brew", image: "ic_ColdBrew", isSelected: false))
    }
}
