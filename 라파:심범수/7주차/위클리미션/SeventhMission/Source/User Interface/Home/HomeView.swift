//
//  HomeView.swift
//  SeventhMission
//
//  Created by Rafael on 11/14/23.
//

import SwiftUI

struct HomeView: View {
    init() {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.backgroundColor = UIColor(.white)
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().compactAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
    }
    
    var body: some View {
        let leadingItem = Button(action: {
            
        }, label: {
            Text("화명동")
                .font(.title2)
                .fontWeight(.bold)
            Image(systemName: "chevron.down")
                .fontWeight(.bold)
                .imageScale(.small)
        }).foregroundColor(.black)
        
        let trailingItems = HStack {
            Button(action: {
                
            }, label: {
                Image(systemName: "list.bullet")
                    .fontWeight(.medium)
            })
            
            Button(action: {
                
            }, label: {
                Image(systemName: "magnifyingglass")
                    .fontWeight(.medium)
            })
            
            Button(action: {
                
            }, label: {
                Image(systemName: "bell")
                    .fontWeight(.medium)
            })
        }.foregroundColor(.black)
        
        NavigationView {
            
            List {
                ForEach(Product.items) { product in
                    ProductRow(products: product)
                        .alignmentGuide(.listRowSeparatorLeading, computeValue: { dimension in
                            return dimension[.leading]
                        })
                        .alignmentGuide(.listRowSeparatorTrailing, computeValue: { dimension in
                            return dimension[.trailing]
                        })
                }
                
                SubProductView()
                
                ForEach(Product.items) { product in
                    ProductRow(products: product)
                        .alignmentGuide(.listRowSeparatorLeading, computeValue: { dimension in
                            return dimension[.leading]
                        })
                        .alignmentGuide(.listRowSeparatorTrailing, computeValue: { dimension in
                            return dimension[.trailing]
                        })
                }
            }
            .listStyle(.plain)
            .navigationBarItems(leading: leadingItem, trailing: trailingItems)
        }
    }
}

#Preview {
    HomeView()
}
