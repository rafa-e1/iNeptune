//
//  OrderView.swift
//  EighthMission
//
//  Created by Rafael on 12/24/23.
//

import SwiftUI

struct OrderView: View {
    @ObservedObject var orderModel: OrderModel
    
    var body: some View {
        Text("주문 상세")
        Text("선택한 사이즈: \(orderModel.selectedSize)")
        Text("총 가격: \(orderModel.totalPrice)원")
    }
}
