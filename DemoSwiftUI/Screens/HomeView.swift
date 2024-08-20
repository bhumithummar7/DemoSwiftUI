//
//  HomeView.swift
//  DemoSwiftUI
//
//  Created by Microloop Bhumi on 7/18/23.
//

import SwiftUI
struct Item: Identifiable {
    let id: Int
    let name: String
    let image:String
    var isSelected:Bool
}
struct HomeView: View {
    @State private var searchText: String = ""
    @State private var  items: [Item] = [
        Item(id: 1, name: "Cappuccino",image:"ic_Cappuccino",isSelected: true),
        Item(id: 2, name: "Cold Brew",image:"ic_ColdBrew",isSelected: false),
        Item(id: 3, name: "Expresso",image:"ic_Expresso",isSelected: false),
        // Add more items as needed
    ]
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack(spacing: 20){
                    HomeHeaderView()
                    ScrollView(showsIndicators: false) {
                        VStack (spacing: 30){
                            VStack(spacing: 32){
                                HeaderTitleView(title: "Good morning, Dityo")
                                SearchView(searchText: searchText)
                            }
                            VStack(alignment: .leading,spacing:20){
                                HeaderTitleView(title: "Categories")
                                
                                
                                VStack{
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        HStack(spacing: 15)  {
                                            ForEach(Array(items.enumerated()), id: \.element.id) { index, item in
                                                CategoriesTabView(isSelected: item.isSelected,item:item)
                                                    .onTapGesture {
                                                        if let index = self.items.firstIndex(where: { $0.isSelected }) {
                                                            self.items[index].isSelected = false
                                                        }
                                                        if let index = self.items.firstIndex(where: { $0.id == item.id }) {
                                                            self.items[index].isSelected = true
                                                        }
                                                    }
                                            }
                                        }
                                    }
                                    
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        HStack(spacing: 15)  {
                                            ForEach(items) { item in
                                                NavigationLink(destination: CoffeeDetailView()) {
                                                    CategoriesTabDataView()
                                                        .frame(width: (geometry.size.width - 25) / 2)
                                                } //: LINK
                                            }
                                        }.padding(.vertical,5)
                                            .padding(.horizontal,5)
                                    }//.padding(.vertical,5)
                                }
                            }
                            VStack{
                                HeaderTitleView(title: "Special Offer 🔥")
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack()  {
                                        ForEach(items) { item in
                                            SpecialOfferView()
                                        }
                                    }
                                }
                            }
                        }
                    }
                }.padding()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
