//
//  ContentView.swift
//  WeeklyMission7th
//
//  Created by 제민우 on 11/19/23.
//

import SwiftUI

struct ContentView: View {
    init() {
        let naviBarAppearance = UINavigationBarAppearance()
        
        naviBarAppearance.backgroundColor = .white
        UINavigationBar.appearance().standardAppearance = naviBarAppearance
        UINavigationBar.appearance().compactAppearance = naviBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = naviBarAppearance
    }
    
    var body: some View {
        ZStack {
            NavigationView {
                HStack {
                    Text("")
                        .navigationBarItems(
                            leading: Button(action: { }, label: {
                                Text("대연4동 ▾")
                                    .font(.system(size: 20,weight: .bold))
                            }),
                            trailing: HStack {
                                Button(action: {}){
                                    Image(systemName: "text.justify")
                                }
                                Button(action:{}){
                                    Image(systemName: "magnifyingglass")
                                }
                                Button(action:{}){
                                    Image(systemName: "bell")
                                }
                            }
                        )
                        .foregroundStyle(Color.black)
                        .background(Color.white)
                    ProductList()
                        .padding(.leading, -8)
                    
                }
            }
            addPostFloatingButton()
        }
    }
}

struct addPostFloatingButton: View {
    var body: some View {
        VStack {
            Spacer()    // VStack의 시작 부분에 Spacer를 넣어 버튼을 아래로 밀어냄.
            
            HStack {
                Spacer()    // HStack의 시작 부분에 Spacer를 넣어서 버튼을 오른쪽으로 밀어냄.
                
                Button(action: {
                    
                }) {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .padding()
                        .frame(width: 90, height: 90)
                        .scaledToFit()
                }
                .foregroundStyle(Color.orange)
            }
        }
    }
}

#Preview {
    ContentView()
}
