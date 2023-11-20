//
//  HorizontalScrollViewCell.swift
//  WeeklyMission7th
//
//  Created by 제민우 on 11/20/23.
//

import SwiftUI

struct HorizontalScrollViewCell: View {
    var horizontalProductDatas: ProductModel
    
    var body: some View {
        VStack(alignment: .leading, content: {
            horizontalProductDatas.productImage?
                .resizable()
                .cornerRadius(5)
                .frame(width: 100, height: 100)
            Text(horizontalProductDatas.productTitle ?? "")
                .padding(.bottom, 3)
                .frame(width: 120, alignment: .leading)
                .lineLimit(2)
            Text(horizontalProductDatas.productPrice ?? "")
                .font(.system(size: 14, weight: .bold))
        })
        .padding(5)
    }
}

#Preview {
    Group {
        HorizontalScrollViewCell(horizontalProductDatas: horizontalProductData[0])
        HorizontalScrollViewCell(horizontalProductDatas: horizontalProductData[1])
        HorizontalScrollViewCell(horizontalProductDatas: horizontalProductData[2])
    }
}
