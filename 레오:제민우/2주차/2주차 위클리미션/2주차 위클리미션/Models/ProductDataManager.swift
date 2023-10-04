//
//  ProductDataManager.swift
//  2주차 위클리미션
//
//  Created by 제민우 on 2023/10/04.
//

import UIKit

class ProductDataManager {
    private var productDataArray: [ProductModel] = [
        ProductModel(
            productImage: UIImage(named: ""),
            productTitle: "문화상품권",
            productDescription: "대연제3동 ∙ 끌올 5초 전",
            productPrice: "25,000원"
        ),
        ProductModel(
            productImage: UIImage(named: ""),
            productTitle: "먹다 남은 닭발",
            productDescription: "남천제2동 ∙ 끌올 1초 전",
            productPrice: "15,000원"
        ),
        ProductModel(
            productImage: UIImage(named: ""),
            productTitle: "오다 주은 연필",
            productDescription: "광안동 ∙ 3시간전",
            productPrice: "5,000원"
        ),
        ProductModel(
            productImage: UIImage(named: ""),
            productTitle: "남편 몰래 파는 플스",
            productDescription: "대연제1동 ∙ 1시간 전",
            productPrice: "100,000원"
        ),
        ProductModel(
            productImage: UIImage(named: ""),
            productTitle: "와이프 몰래 파는 가방",
            productDescription: "용호제1동 ∙ 2일 전",
            productPrice: "150,000원"
        ),
        ProductModel(
            productImage: UIImage(named: ""),
            productTitle: "당근에서 파는 당근",
            productDescription: "대연제3동 ∙ 끌올 1일전",
            productPrice: "15,000원"
        ),
        ProductModel(
            productImage: UIImage(named: ""),
            productTitle: "바람막이",
            productDescription: "대연제3동 ∙ 끌올 5초 전",
            productPrice: "215,000원"
        ),
        ProductModel(
            productImage: UIImage(named: ""),
            productTitle: "바지 나눔",
            productDescription: "대연제4동 ∙ 4시간 전",
            productPrice: "나눔🧡"
        ),
        ProductModel(
            productImage: UIImage(named: ""),
            productTitle: "문화상품권",
            productDescription: "대연제동 ∙ 끌올 5초 전",
            productPrice: "25,000원"
        ),
    ]
    
    func fetchProductData() -> [ProductModel] {
        return productDataArray
    }
    
}
