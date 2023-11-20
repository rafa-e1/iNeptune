//
//  ProductModel.swift
//  WeeklyMission7th
//
//  Created by 제민우 on 11/20/23.
//

import SwiftUI

struct ProductModel: Identifiable {
    var id: Int
    
    var productImage: Image?
    var productTitle: String?
    var productDescription: String?
    var productPrice: String?
}

let listProductsData: [ProductModel] = [
    ProductModel(
        id: 1,
        productImage: Image("Product1"),
        productTitle: "문화상품권 5000원",
        productDescription: "대연제3동 ∙ 끌올 5초 전",
        productPrice: "25,000원"
    ),
    ProductModel(
        id: 2,
        productImage: Image("Product2"),
        productTitle: "먹다 남은 꼬지, 먹다 남은 콜라, 먹다 남은 치킨 무",
        productDescription: "남천제2동 ∙ 끌올 1초 전",
        productPrice: "15,000원"
    ),
    ProductModel(
        id: 3,
        productImage: Image("Product3"),
        productTitle: "오다 주은 연필",
        productDescription: "광안동 ∙ 3시간전",
        productPrice: "5,000원"
    ),
    ProductModel(
        id: 4,
        productImage: Image("Product4"),
        productTitle: "남편 몰래 파는 플스",
        productDescription: "대연제1동 ∙ 1시간 전",
        productPrice: "100,000원"
    ),
    ProductModel(
        id: 5,
        productImage: Image("Product5"),
        productTitle: "와이프 몰래 파는 가방",
        productDescription: "용호제1동 ∙ 2일 전",
        productPrice: "150,000원"
    ),
    ProductModel(
        id: 6,
        productImage: Image("Product1"),
        productTitle: "당근에서 파는 당근",
        productDescription: "대연제3동 ∙ 끌올 1일전",
        productPrice: "15,000원"
    ),
    ProductModel(
        id: 7,
        productImage: Image("Product2"),
        productTitle: "바람막이",
        productDescription: "대연제3동 ∙ 끌올 5초 전",
        productPrice: "215,000원"
    ),
    ProductModel(
        id: 8,
        productImage: Image("Product3"),
        productTitle: "바지 나눔",
        productDescription: "대연제4동 ∙ 4시간 전",
        productPrice: "나눔🧡"
    ),
    ProductModel(
        id: 9,
        productImage: Image("Product4"),
        productTitle: "문화상품권",
        productDescription: "대연제동 ∙ 끌올 5초 전",
        productPrice: "25,000원"
    )
]

let horizontalProductData: [ProductModel] = [
    ProductModel(
        id: 1,
        productImage: Image("Product4"),
        productTitle: "와이프 몰래 파는 가방",
        productDescription: "용호제1동 ∙ 2일 전",
        productPrice: "150,000원"
    ),
    ProductModel(
        id: 2,
        productImage: Image("Product1"),
        productTitle: "당근에서 파는 당근",
        productDescription: "대연제3동 ∙ 끌올 1일전",
        productPrice: "15,000원"
    ),
    ProductModel(
        id: 3,
        productImage: Image("Product3"),
        productTitle: "바람막이",
        productDescription: "대연제3동 ∙ 끌올 5초 전",
        productPrice: "215,000원"
    ),
    ProductModel(
        id: 4,
        productImage: Image("Product2"),
        productTitle: "바지 나눔",
        productDescription: "대연제4동 ∙ 4시간 전",
        productPrice: "나눔🧡"
    ),
    ProductModel(
        id: 5,
        productImage: Image("Product4"),
        productTitle: "문화상품권",
        productDescription: "대연제동 ∙ 끌올 5초 전",
        productPrice: "25,000원"
    )
]

