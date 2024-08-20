//
//  HeaderTitleView.swift
//  DemoSwiftUI
//
//  Created by Microloop Bhumi on 7/20/23.
//

import SwiftUI

struct HeaderTitleView: View {
    
    @State var title: String
    var body: some View {
        HStack {
            Text(title).font(.custom(FontConstants.kLatoBold, size: 20))
                .multilineTextAlignment(.leading)
            Spacer()
        }
    }
}

struct HeaderTitleView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderTitleView(title: "Hello")
    }
}
