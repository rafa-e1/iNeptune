//
//  SwiftUIView.swift
//  WeeklyMission6th
//
//  Created by 제민우 on 11/15/23.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        NavigationView {
            NavigationStack {
                VStack {
                    ZStack {
                        Color(UIColor.systemGray5)
                            .ignoresSafeArea()
                        HStack {
                            Text("")
                                .navigationBarItems(
                                    leading: Button(action: { }, label: {
                                        Text("우리집 ▾")
                                            .font(.system(size: 20,weight: .bold))
                                    }),
                                    trailing: HStack {
                                        Button(action: {}){
                                            Image(systemName: "square.split.2x2")
                                        }
                                        Button(action:{}){
                                            Image(systemName: "bell")
                                        }
                                        Button(action:{}){
                                            Image(systemName: "cart")
                                        }
                                    }
                                )
                                .foregroundStyle(Color.white)
                                .toolbarBackground(Color("MainColor"), for: .navigationBar)
                                .toolbarBackground(.visible, for: .navigationBar)
                        }
                        
                        ScrollView {
                            SearchBar()
                                .background(Color("MainColor"))
                                .roundedCorner(10, corners: [.bottomLeft, .bottomRight])
                            
                            Image("AD")
                                .resizable()
                                .scaledToFit()
                                .roundedCorner(10, corners: [.allCorners])
                                .padding([.leading, .trailing], 10)
                            // MainCategoryButton
                            HStack {
                                MainCategoryButton(mainCategoryButtonImage: "CategoryDelivery")
                                MainCategoryButton(mainCategoryButtonImage: "CategoryBMart")
                                MainCategoryButton(mainCategoryButtonImage: "CategorySale")
                            }
                            .padding(.top, 15)
                            .padding([.leading, .trailing], 10)
                            
                            BaeminOneView()
                                .roundedCorner(10, corners: [.allCorners])
                                .padding(.top, 15)
                                .padding([.leading, .trailing], 10)

                            Image("AD")
                                .resizable()
                                .scaledToFit()
                                .roundedCorner(10, corners: [.allCorners])
                                .padding([.top, .leading, .trailing], 10)
                        }
                        .background(Color(UIColor.systemGray5))
                    }
                }
                
            }
        }
    }
}

struct SearchBar: View {
    @State private var searchText = ""
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color("MainColor"))
            TextField("마라샹궈? 쭈꾸미? 낙곱새?", text: $searchText)
                .background(Color.white)
                .padding(5)
        }
        .padding(EdgeInsets(top: 15, leading: 8, bottom: 15, trailing: 8))

        .frame(height: 40)
        .background(Color.white)
        .padding(EdgeInsets(top: 0, leading: 10, bottom: 12, trailing: 10))

    }
}

#Preview {
    SwiftUIView()
}
