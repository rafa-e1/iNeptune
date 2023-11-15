//
//  ContentView.swift
//  WeeklyMission6th
//
//  Created by 제민우 on 11/12/23.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.backgroundColor = UIColor(named: "MainColor")
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().compactAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
        
    }

    var body: some View {
            NavigationView {
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
                        .background(Color("MainColor"))
                }
                .background(Color("MainColor"))
            }
        // 전체 VStack
        ScrollView {
            Button(action: { }) {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(Color("MainColor"))
                Text("닭볶음탕 나와라 뚝딱!!")
                    .foregroundStyle(Color.gray)
            }
            .background(Color.white)
            Image("AD")
                .resizable()
                .scaledToFit()
                .padding([.leading, .trailing], 10)
            // MainCategoryButton
            HStack {
                MainCategoryButton(mainCategoryButtonImage: "CategoryDelivery")
                MainCategoryButton(mainCategoryButtonImage: "CategoryBMart")
                MainCategoryButton(mainCategoryButtonImage: "CategorySale")
            }
            .padding(.top, 15)
            .padding(.leading, 10)
            
            BaeminOneView()
                .padding(.top, 15)
                .padding([.leading, .trailing], 10)
            
            Image("AD")
                .resizable()
                .scaledToFit()
                .padding([.leading, .trailing], 10)
        }
        .background(Color(UIColor.systemGray6))

    }
}

#Preview {
    ContentView()
}
