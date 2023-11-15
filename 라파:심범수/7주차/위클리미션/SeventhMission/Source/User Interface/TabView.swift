//
//  TabView.swift
//  SeventhMission
//
//  Created by Rafael on 11/14/23.
//

import SwiftUI

struct TabView: View {
    @State private var selectedIndex = 0
    
    private let tabBarImageName = ["house", "doc.plaintext", "location", "message", "person"]
    let selectedTabBarImageName = ["house.fill", "doc.plaintext.fill", "location.fill", "message.fill", "person.fill"]
    private let tabBarName = ["홈", "동네생활", "내 근처", "채팅", "나의 당근"]
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                switch selectedIndex {
                case 0:
                    HomeView()
                    
                    HStack {
                        Button(action: {}, label: {
                            Text("+ 글쓰기")
                                .foregroundStyle(Color.white)
                        })
                    }
                    .frame(width: 100,height: 50,alignment: .center)
                    .background(Color.orange)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 10))
                case 1:
                    NeighborhoodView()
                case 2:
                    NearbyView()
                case 3:
                    ChattingView()
                case 4:
                    MyCarrotView()
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
                    Image(systemName: selectedIndex == num ? selectedTabBarImageName[num] : tabBarImageName[num])
                        .font(.system(size: 25, weight: .medium))
                        .foregroundColor(.black)
                    Text(tabBarName[num])
                        .font(.system(size: 10, weight: .semibold))
                        .foregroundStyle(.black)
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
    TabView()
}
