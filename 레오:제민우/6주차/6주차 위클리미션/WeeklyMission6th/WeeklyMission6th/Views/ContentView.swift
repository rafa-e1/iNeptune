//
//  ContentView.swift
//  WeeklyMission6th
//
//  Created by 제민우 on 11/12/23.
//

import SwiftUI

struct ContentView: View {
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

#Preview {
    ContentView()
}
