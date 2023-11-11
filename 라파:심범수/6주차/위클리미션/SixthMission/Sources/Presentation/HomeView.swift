//
//  HomeView.swift
//  SixthMission
//
//  Created by Rafael on 11/7/23.
//

import SwiftUI

struct HomeView: View {
    init() {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.backgroundColor = UIColor(named: "mainColor")
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().compactAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
    }
    
    @State private var searchText = ""
    @State private var selectedIndex: Int? = nil
    
    var body: some View {
        let leadingItem = Button(action: {
            
        }, label: {
            Text("우리집")
                .font(.title2)
                .fontWeight(.bold)
            Image(systemName: "chevron.down")
                .fontWeight(.bold)
                .imageScale(.small)
        }).foregroundColor(.white)
        
        let trailingItems = HStack {
            Button(action: {
                
            }, label: {
                Image(systemName: "square.grid.2x2")
                    .fontWeight(.bold)
            })
            
            Button(action: {
                
            }, label: {
                Image(systemName: "bell")
                    .fontWeight(.bold)
            })
            
            Button(action: {
                
            }, label: {
                Image(systemName: "cart")
                    .fontWeight(.bold)
            })
        }.foregroundColor(.white)
        
        NavigationView {
            ScrollView {
                ZStack {
                    LazyVGrid(columns: [GridItem(.flexible())], spacing: 0) {
                        TopView()
                        CouponView()
                            .frame(height: 90)
                            .padding(.horizontal, 10)
                            .onTapGesture {
                                print("쿠폰 당첨")
                            }
                        CategoryView()
                            .padding(EdgeInsets(top: 5, leading: 0, bottom: 15, trailing: 0))
                        BigSaleView()
                        BannerView()
                            .cornerRadius(10)
                            .frame(width: UIScreen.main.bounds.width - 30, height: 150)
                            .padding()
                        SubCategoryView()
                    }
                }
                .background(Color("background"))
            }
            .background(Color("mainColor"))
            .navigationBarItems(leading: leadingItem, trailing: trailingItems)
            .refreshable {
                await refreshItems()
            }
        }
    }
}

private func refreshItems() async {
    do {
        try await Task.sleep(seconds: 3.0)
        print("새로고침")
    } catch {
        print("에러 발생: \(error)")
    }
}

extension Task where Success == Never, Failure == Never {
    static func sleep(seconds: Double) async throws {
        let duration = UInt64(seconds * 1_000_000_000)
        try await Task.sleep(nanoseconds: duration)
    }
}

#Preview {
    HomeView()
}
