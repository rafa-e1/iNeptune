//
//  ContentView.swift
//  EighthMission
//
//  Created by Rafael on 11/29/23.
//

import SwiftUI

struct ContentView: View {
    init() {
        configureNavigationBarAppearance()
    }
    
    @State private var totalPrice = 20_000
    @StateObject var orderModel = OrderModel()
    @State private var isOrderViewPresented = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    HeaderImageView()
                    FoodDetailView()
                    MainOptionView(orderModel: orderModel, totalPrice: $totalPrice)
                    SideOptionView(orderModel: orderModel, totalPrice: $totalPrice)
                }
            }
            .navigationDestination(isPresented: $isOrderViewPresented) {
                OrderView(orderModel: orderModel)
            }
            .navigationBarItems(leading: leadingItem, trailing: trailingItems)
        }
        OrderButtonView(orderModel: orderModel, totalPrice: orderModel.totalPrice, isOrderViewPresented: $isOrderViewPresented)
    }
}

extension ContentView {
    private func configureNavigationBarAppearance() {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.backgroundColor = UIColor.white
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
    }
    
    private var leadingItem: some View {
        Button(action: {}) {
            Image(systemName: "chevron.left")
                .fontWeight(.bold)
                .imageScale(.large)
                .foregroundColor(.black)
        }
    }
    
    private var trailingItems: some View {
        HStack {
            TrailingBarButtonView(imageName: "list.bullet")
            TrailingBarButtonView(imageName: "magnifyingglass")
            TrailingBarButtonView(imageName: "bell")
        }
    }
}

#Preview {
    ContentView()
}
