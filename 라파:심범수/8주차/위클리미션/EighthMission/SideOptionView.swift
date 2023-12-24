//
//  SideOptionView.swift
//  EighthMission
//
//  Created by Rafael on 12/1/23.
//

import SwiftUI

struct SideOptionView: View {
    @ObservedObject var orderModel: OrderModel
    @Binding var totalPrice: Int
    
    var body: some View {
        HStack {
            Text("음료")
                .font(.system(size: 25))
                .fontWeight(.bold)
            
            Spacer()
            
            Text("선택")
                .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                .background(.thinMaterial)
                .cornerRadius(20)
                .font(.system(size: 15))
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
        }
        .padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
        
        Text("최대 2개 선택")
            .font(.system(size: 15))
            .foregroundColor(.secondary)
            .padding(.horizontal)
        
        // 펩시 버튼
        HStack {
            Button(action: {
                orderModel.isPepsiSelected.toggle() // OrderModel의 상태 변경
                if orderModel.isPepsiSelected {
                    orderModel.totalPrice += 2000
                } else {
                    orderModel.totalPrice -= 2000
                }
            }, label: {
                Image(systemName: orderModel.isPepsiSelected ? "square.fill" : "square")
                    .imageScale(.large)
                    .foregroundColor(orderModel.isPepsiSelected ? .mint : .gray)
                    .fontWeight(.bold)
                
                Text("펩시 500ml")
                    .foregroundColor(.black)
                    .font(.system(size: 20))
            })
            
            Spacer()
            
            Text("+2,000원")
                .font(.system(size: 20))
        }
        .padding()
        
        // 사이다 버튼
        HStack {
            Button(action: {
                orderModel.isSodaSelected.toggle() // OrderModel의 상태 변경
                if orderModel.isSodaSelected {
                    orderModel.totalPrice += 2000
                } else {
                    orderModel.totalPrice -= 2000
                }
            }, label: {
                Image(systemName: orderModel.isSodaSelected ? "square.fill" : "square")
                    .imageScale(.large)
                    .foregroundColor(orderModel.isSodaSelected ? .mint : .gray)
                    .fontWeight(.bold)
                
                Text("사이다 500ml")
                    .foregroundColor(.black)
                    .font(.system(size: 20))
            })
            
            Spacer()
            
            Text("+2,000원")
                .font(.system(size: 20))
        }
        .padding()
    }
}
