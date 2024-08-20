//
//  SearchView.swift
//  DemoSwiftUI
//
//  Created by Microloop Bhumi on 7/20/23.
//

import SwiftUI

struct SearchView: View {
    @State var searchText: String
    var body: some View {
        HStack{
            Image("ic_search")
                .resizable()
                .frame(width: 24,height: 24)
            TextField("Search Coffee...", text: $searchText).font(.custom(FontConstants.kLatoRegular, size: 12))
            Button(action: {
            }, label: {
                Image("ic_filter_brown")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                .frame(width: 24, height: 24)
              
            })
        }.padding()
            .background(Color(ColorConstants.kGrayF8F7FA))
            .clipShape(Capsule())
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchText: "")
    }
}
