//
//  OrderModel.swift
//  EighthMission
//
//  Created by Rafael on 12/24/23.
//

import Foundation

class OrderModel: ObservableObject {
    @Published var selectedSize: String = "M" {
        didSet {
            if selectedSize == "L" && oldValue != "L" {
                // 'L' 사이즈를 선택했을 때
                totalPrice += 3000
            } else if selectedSize != "L" && oldValue == "L" {
                // 'L' 사이즈 선택을 해제했을 때
                totalPrice -= 3000
            }
        }
    }
    @Published var totalPrice: Int = 20000
    @Published var isPepsiSelected: Bool = false
    @Published var isSodaSelected: Bool = false
}
