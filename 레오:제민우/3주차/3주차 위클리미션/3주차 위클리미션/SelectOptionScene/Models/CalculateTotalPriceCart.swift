//
//  CalculateTotalPriceCart.swift
//  3주차 위클리미션
//
//  Created by 제민우 on 2023/10/12.
//

import Foundation

class CalculateTotalPriceCart {
    static let calculateTotalPriceCart = CalculateTotalPriceCart()
    private init() {}
    
    var chickenPart: OptionModel = OptionModel(optionLabel: "", optionPrice: 0)
    var topping: [OptionModel] = []
    var hotSide: [OptionModel] = []
    var totalPrice = 0
    
    func resetCart() {
        self.chickenPart = OptionModel(optionLabel: "", optionPrice: 0)
        self.topping.removeAll()
        self.hotSide.removeAll()
        self.totalPrice = 0
    }
}
