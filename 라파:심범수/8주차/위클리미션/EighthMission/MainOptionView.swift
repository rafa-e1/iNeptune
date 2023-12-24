//
//  MainOptionView.swift
//  EighthMission
//
//  Created by Rafael on 12/1/23.
//

import SwiftUI

struct MainOptionView: View {
    @ObservedObject var orderModel: OrderModel
    @Binding var totalPrice: Int
    
    var body: some View {
        HStack {
            Text("가격")
                .font(.system(size: 25))
                .fontWeight(.bold)
            
            Spacer()
            
            Text("필수")
                .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                .background(.thinMaterial)
                .cornerRadius(20)
                .font(.system(size: 15))
                .fontWeight(.semibold)
                .foregroundStyle(.blue)
        }
        .padding()
        
        HStack {
            SizeButtonView(size: "M", isSelected: orderModel.selectedSize == "M") {
                orderModel.selectedSize = "M"
            }
            
            Spacer()
            
            Text("20,000원")
                .font(.system(size: 20))
        }
        .padding(.horizontal)
        
        HStack {
            SizeButtonView(size: "L", isSelected: orderModel.selectedSize == "L") {
                orderModel.selectedSize = "L"
            }
            Spacer()
            
            Text("23,000원")
                .font(.system(size: 20))
        }
        .padding()
        
        Rectangle()
            .foregroundColor(Color("divider"))
    }
}
