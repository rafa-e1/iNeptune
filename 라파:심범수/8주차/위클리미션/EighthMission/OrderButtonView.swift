//
//  OrderButtonView.swift
//  EighthMission
//
//  Created by Rafael on 12/1/23.
//

import SwiftUI

struct OrderButtonView: View {
    @ObservedObject var orderModel: OrderModel
    var totalPrice: Int
    @Binding var isOrderViewPresented: Bool
    
    var body: some View {
        VStack {
            Divider().frame(height: 2)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("배달최소주문금액")
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                    
                    Text("20,000원")
                        .font(.system(size: 15))
                }
                .padding(.trailing, 5)
                
                Button(action: {
                    // 네비게이션 트리거
                    isOrderViewPresented = true
                }) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(.mint)
                            .frame(height: 55)
                        
                        Text("\(totalPrice)원 담기")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                    }
                }
            }
            .padding(EdgeInsets(top: 5, leading: 15, bottom: 0, trailing: 15))
        }
    }
}
