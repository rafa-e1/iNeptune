//
//  DetailCellData.swift
//  ThirdMission
//
//  Created by Rafael on 10/10/23.
//

import Foundation

struct SettingItem {
    let title: String
    let category: String
    let subtitle: String?
    let firstMainOption: String?
    let firstMainOptionPrice: Int?
    let secondMainOption: String?
    let secondMainOptionPrice: Int?
    let firstSubOption: String?
    let firstSubOptionPrice: Int?
    let isButtonEnabled: Bool?
}

struct SettingSection {
    let items: [SettingItem]
    
    static func generateData() -> [SettingSection] {
        return [
            SettingSection(
                items: [
                    SettingItem(
                        title: "[재주문1위] 바싹불고기피자",
                        category: "바싹 익힌 불고기의 풍미를 입안 가득 느낄 수 있는 자가제빵선명희피자의 야심작",
                        subtitle: nil,
                        firstMainOption: nil,
                        firstMainOptionPrice: nil,
                        secondMainOption: nil,
                        secondMainOptionPrice: nil,
                        firstSubOption: nil,
                        firstSubOptionPrice: nil,
                        isButtonEnabled: nil
                    )
                ]
            ),
            SettingSection(
                items: [
                    SettingItem(
                        title: "가격",
                        category: "필수",
                        subtitle: nil,
                        firstMainOption: "M",
                        firstMainOptionPrice: 20_000,
                        secondMainOption: "L",
                        secondMainOptionPrice: 23_000,
                        firstSubOption: nil,
                        firstSubOptionPrice: nil,
                        isButtonEnabled: false
                    )
                ]
            ),
            SettingSection(
                items: [
                    SettingItem(
                        title: "도우변경",
                        category: "선택",
                        subtitle: "최대 1개 선택",
                        firstMainOption: nil,
                        firstMainOptionPrice: nil,
                        secondMainOption: nil,
                        secondMainOptionPrice: nil,
                        firstSubOption: "크림리치골드 크러스트",
                        firstSubOptionPrice: 4_500,
                        isButtonEnabled: false
                    )
                ]
            )
        ]
    }
}
