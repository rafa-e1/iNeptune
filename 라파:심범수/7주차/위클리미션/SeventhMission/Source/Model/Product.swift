//
//  Product.swift
//  SeventhMission
//
//  Created by Rafael on 11/14/23.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let price: Int
    let numberOfComment: Int
    let numberOfHeart: Int
    var isReservation: Bool
}

extension Product {
    static let items: [Product] = [
        Product(
            imageName: "1",
            title: "에어팟 맥스 실버 팝니다",
            description: "부산광역시 북구 ・ 1일 전",
            price: 370_000,
            numberOfComment: 5,
            numberOfHeart: 23,
            isReservation: true
        ),
        Product(
            imageName: "1",
            title: "에어팟 맥스 실버 팝니다",
            description: "부산광역시 북구 ・ 1일 전",
            price: 370_000,
            numberOfComment: 1,
            numberOfHeart: 4,
            isReservation: false
        ),
        Product(
            imageName: "1",
            title: "에어팟 맥스 실버 팝니다",
            description: "부산광역시 북구 ・ 1일 전",
            price: 370_000,
            numberOfComment: 0,
            numberOfHeart: 2,
            isReservation: false
        ),
        Product(
            imageName: "1",
            title: "에어팟 맥스 실버 팝니다",
            description: "부산광역시 북구 ・ 1일 전",
            price: 370_000,
            numberOfComment: 5,
            numberOfHeart: 0,
            isReservation: true
        ),
        Product(
            imageName: "1",
            title: "에어팟 맥스 실버 팝니다",
            description: "부산광역시 북구 ・ 1일 전",
            price: 370_000,
            numberOfComment: 0,
            numberOfHeart: 0,
            isReservation: false
        ),
    ]
}
