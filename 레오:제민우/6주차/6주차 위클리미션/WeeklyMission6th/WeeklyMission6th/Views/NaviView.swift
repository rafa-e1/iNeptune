//
//  NaviView.swift
//  WeeklyMission6th
//
//  Created by 제민우 on 11/13/23.
//

import SwiftUI

struct NaviView: View {
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

    }
}

#Preview {
    NaviView()
}
