//
//  TabBar.swift
//  WeeklyMission7th
//
//  Created by 제민우 on 11/20/23.
//

import SwiftUI

struct CarrotTabView: View {
    var body: some View {
        TabView {
            Group {
                ContentView()
                    .tabItem { 
                        Image(systemName: "house")
                        Text("홈")
                    }
                Text("NextPage")
                    .tabItem { 
                        Image(systemName: "list.clipboard")
                        Text("동네생활")
                    }
                Text("NextPage")
                    .tabItem {
                        Image(systemName: "location")
                        Text("내 근처")
                    }
                Text("NextPage")
                    .tabItem {
                        Image(systemName: "bubble.left")
                        Text("채팅")
                    }
                Text("NextPage")
                    .tabItem {
                        Image(systemName: "person")
                        Text("나의 당근")
                    }
            }
            .toolbarBackground(.white, for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
        }
        .accentColor(.black)
    }
}

#Preview {
    CarrotTabView()
}
