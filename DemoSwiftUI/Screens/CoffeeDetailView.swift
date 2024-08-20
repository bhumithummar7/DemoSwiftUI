//
//  CoffeeDetailView.swift
//  DemoSwiftUI
//
//  Created by Microloop Bhumi on 7/25/23.
//

import SwiftUI

struct CoffeeDetailView: View {
    @State private var  items: [Item] = [
        Item(id: 1, name: "Small",image:"",isSelected: true),
        Item(id: 2, name: "Medium",image:"",isSelected: false),
        Item(id: 3, name: "Large",image:"",isSelected: false),
        // Add more items as needed
    ]
    
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                    VStack{
                        ZStack {
                            Image("ic_category_placeholder").resizable()
                            VStack {
                                Spacer()
                                CoffeeDetailHeaderInfoView()
                                    .padding(.bottom, 35.0)
                                    .background(Color.black.opacity(0.3))
                            }
                        }.frame(height:350)
                        ZStack{
                            ScrollView(showsIndicators: false){
                                VStack(spacing: 30){
                                    HStack(){
                                        Spacer()
                                        CategoriesTabView(isSelected: false, item: Item.init(id: 0, name: "Coffee", image: "ic_coffee", isSelected: false))
                                        Divider()
                                            .frame(width: 1)
                                            .background(Color.black)
                                        CategoriesTabView(isSelected: false, item: Item.init(id: 0, name: "Chocolate", image: "ic_choclate", isSelected: false))
                                        Divider()
                                            .frame(width: 1)
                                            .background(Color.black)
                                        CategoriesTabView(isSelected: false, item: Item.init(id: 0, name: "Medium Roasted", image: "", isSelected: false))
                                        Spacer()
                                    }.padding(10)
                                        .background(Color(ColorConstants.kGrayA6A6AA).opacity(0.21))
                                        .clipShape(Capsule())
                                    
                                    
                                    VStack {
                                        HeaderTitleView(title: "Coffee Size")
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            HStack(spacing: 20)  {
                                                ForEach(Array(items.enumerated()), id: \.element.id) { index, item in
                                                    CoffeeSizeView(isSelected: item.isSelected, width: (geometry.size.width - 85) / 3,item:item)
                                                        .onTapGesture {
                                                            if let index = self.items.firstIndex(where: { $0.isSelected }) {
                                                                self.items[index].isSelected = false
                                                            }
                                                            if let index = self.items.firstIndex(where: { $0.id == item.id }) {
                                                                self.items[index].isSelected = true
                                                            }
                                                        }
                                                }
                                            }.padding(5)
                                        }
                                    }
                                    VStack(spacing: 10){
                                        HeaderTitleView(title: "About")
                                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Id ipsum vivamus velit lorem amet. Tincidunt cras volutpat aliquam porttitor molestie. Netus neque, habitasse id vulputate proin cras. Neque, vel duis sit vel pellentesque tempor. A commodo arcu tortor arcu, elit. ")
                                            .font(.custom(FontConstants.kLatoRegular, size: 12))
                                    }
                                    Button(action: {
                                        
                                    }, label: {
                                        HStack{
                                            Spacer()
                                            Text("Add to Cart")
                                                .font(.custom(FontConstants.kLatoRegular, size: 20))
                                                .foregroundColor(.white)
                                            Spacer()
                                            Divider()
                                                .frame(width: 1)
                                                .background(Color.white)
                                            Spacer()
                                            Text("50 k")
                                                .font(.custom(FontConstants.kLatoBold, size: 20))
                                                .foregroundColor(.white)
                                            Spacer()
                                        }
                                    }).padding(25)
                                        .background(
                                            Color(ColorConstants.kBrownColor)
                                        )
                                        .clipShape(Capsule())
                                }.padding()
                            }
                        }.background(Color.white)
                            .cornerRadius(40)
                            .padding(.top, -45)
                    }.edgesIgnoringSafeArea(.top)
            }.navigationBarHidden(true)
        }
    }
}

struct CoffeeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeDetailView()
    }
}
