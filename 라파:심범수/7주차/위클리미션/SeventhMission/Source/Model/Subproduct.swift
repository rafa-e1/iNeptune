//
//  Subproduct.swift
//  SeventhMission
//
//  Created by Rafael on 11/15/23.
//

import Foundation

struct Subproduct: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let price: Int
}

extension Subproduct {
    static let items: [Subproduct] = [
        Subproduct(imageName: "1", title: "에어팟 맥스 실버 팝니다", price: 370_000),
        Subproduct(imageName: "1", title: "에어팟 맥스 실버 팝니다", price: 370_000),
        Subproduct(imageName: "1", title: "에어팟 맥스 실버 팝니다", price: 370_000),
        Subproduct(imageName: "1", title: "에어팟 맥스 실버 팝니다", price: 370_000),
        Subproduct(imageName: "1", title: "에어팟 맥스 실버 팝니다", price: 370_000),
        Subproduct(imageName: "1", title: "에어팟 맥스 실버 팝니다", price: 370_000),
        Subproduct(imageName: "1", title: "에어팟 맥스 실버 팝니다", price: 370_000),
        Subproduct(imageName: "1", title: "에어팟 맥스 실버 팝니다", price: 370_000),
        Subproduct(imageName: "1", title: "에어팟 맥스 실버 팝니다", price: 370_000),
        Subproduct(imageName: "1", title: "에어팟 맥스 실버 팝니다", price: 370_000),
    ]
}
