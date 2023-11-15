//
//  TabBar.swift
//  WeeklyMission6th
//
//  Created by 제민우 on 11/16/23.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            Group {
                ContentView()
                    .tabItem { Label("검색", image: "tabBarSearch") }
                Text("Next Page")
                    .tabItem { Label("찜", image: "tabBarHeart") }
                Text("Next Page")
                    .tabItem { Label("", image: "tabBarMain") }
                Text("Next Page")
                    .tabItem { Label("주문내역", image: "tabBarList") }
                Text("Next Page")
                    .tabItem { Label("my배민", image: "tabBarMyPage") }
            }
            .toolbarBackground(.white, for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
        }
    }
}

#Preview {
    TabBar()
}
