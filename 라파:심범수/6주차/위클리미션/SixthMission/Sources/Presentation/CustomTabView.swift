//
//  CustomTabView.swift
//  SixthMission
//
//  Created by Rafael on 11/7/23.
//

import SwiftUI

enum Tab {
    case search
    case favorite
    case home
    case order
    case myBM
}

struct CustomTabView: View {
    
    @State private var selectedIndex = 2
    
    let tabBarImageName = ["magnifyingglass", "heart", "house", "list.clipboard", "person"]
    let tabBarName = ["검색", "찜", "배민", "주문내역", "my배민"]
    
    var body: some View {
        VStack {
            ZStack {
                switch selectedIndex {
                case 0:
                    SearchView()
                case 1:
                    FavoriteView()
                case 2:
                    HomeView()
                case 3:
                    OrderedView()
                case 4:
                    MyBMView()
                default:
                    HomeView()
                }
            }
        }
        Spacer()
        HStack {
            Spacer()
            ForEach(0..<tabBarImageName.count, id: \.self) { num in
                VStack {
                    Image(systemName: tabBarImageName[num])
                        .font(.system(size: 25, weight: .medium))
                        .foregroundColor(selectedIndex == num ? Color(.darkGray) : Color(.lightGray))
                    Text(tabBarName[num])
                        .font(.system(size: 10, weight: .semibold))
                        .foregroundStyle(selectedIndex == num ? Color(.darkGray) : Color(.lightGray))
                }
                .gesture(
                    TapGesture()
                        .onEnded({ _ in
                            selectedIndex = num
                        })
                )
                Spacer()
            }
        }
    }
}

#Preview {
    CustomTabView()
}
