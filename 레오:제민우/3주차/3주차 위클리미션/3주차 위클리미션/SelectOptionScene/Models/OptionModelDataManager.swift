//
//  OptionModelDataManager.swift
//  3주차 위클리미션
//
//  Created by 제민우 on 2023/10/11.
//

import UIKit

final class OptionModelDataManager {
    var partOfChickenOptionsArray: [OptionModel] = [
        OptionModel(optionLabel: "뼈", optionPrice: 0),
        OptionModel(optionLabel: "순살", optionPrice: 3000),
        OptionModel(optionLabel: "윙 콤보", optionPrice: 3000)
        ]
    
    var toppingOptionsArray: [OptionModel] = [
        OptionModel(optionLabel: "떡 추가", optionPrice: 2000),
        OptionModel(optionLabel: "웨지감자 추가", optionPrice: 22000)
        ]
    
    var sideMenuOptionsArray: [OptionModel] = [
        OptionModel(optionLabel: "[사이드] 3색볼 (3구): 세가지 맛을 한번에", optionPrice: 3400),
        OptionModel(optionLabel: "[사이드] 블랙치즈볼 (5구)", optionPrice: 4500),
        OptionModel(optionLabel: "[사이드] 기름떡볶이 (달콤)", optionPrice: 4500),
        OptionModel(optionLabel: "[사이드] 기름떡볶이 (레드)", optionPrice: 4500),
        OptionModel(optionLabel: "[사이드] 기름떡볶이 (투움바)", optionPrice: 4500),
    ]
    
    func fetchOptionsData(options: String) -> [OptionModel] {
        if options == "part" {
            return partOfChickenOptionsArray
        } else if options == "topping" {
            return toppingOptionsArray
        } else {
            return sideMenuOptionsArray
        }
    }
}
