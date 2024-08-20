//
//  CategoriesTabView.swift
//  DemoSwiftUI
//
//  Created by Microloop Bhumi on 7/21/23.
//

import SwiftUI

struct CategoriesTabDataView: View {
    var body: some View {
            ZStack {
                    VStack {
                        Image("ic_category_placeholder").resizable()
                            .frame(height:99)
                        .cornerRadius(15)
                        HStack(){
                            VStack(alignment: .leading,spacing:5){
                                Text("Cappuccino").font(.custom(FontConstants.kLatoRegular, size: 16))
                                Text("With Chocolate").font(.custom(FontConstants.kLatoRegular, size: 6))
                                Text("50 k").font(.custom(FontConstants.kLatoRegular, size: 12))
                            }
                            Spacer()
                            Button(action: {
                            }, label: {
                              Image("ic_plus")
                                    .resizable()
                                    .frame(width:30,height:30)
                            }) //: BUTTON
                        }
                        
                    }
                    VStack(alignment: .trailing) {
                        HStack {
                            Spacer()
                            HStack(){
                                Image("ic_star")
                                    .resizable()
                                    .frame(width: 8, height: 8)
                                Text("4.7").font(.custom(FontConstants.kLatoRegular, size: 8))
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.leading)
                            }.padding(.vertical,2)
                                .padding(.horizontal,5)
                                .background(Color(ColorConstants.kBrownColor))
                            .clipShape(Capsule())
                        }
                        .padding(.trailing, 5.0)
                        Spacer()
                    }
                    .padding(.top, 5.0)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.25), radius: 3, x: 2, y: 1)
    }
}

struct CategoriesTabDataView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesTabDataView()
    }
}
