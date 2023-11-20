//
//  ProductRowCell.swift
//  WeeklyMission7th
//
//  Created by 제민우 on 11/20/23.
//

import SwiftUI

struct ProductRowCell: View {
    
    var listProductData: ProductModel
    
    var body: some View {
        HStack(alignment: .top) {
            listProductData.productImage?
                .resizable()
                .cornerRadius(5)
                .frame(width: 100, height: 100)
            VStack(alignment: .leading) {
                Text(listProductData.productTitle ?? "")
                    .font(.system(size: 18))
                    .multilineTextAlignment(.leading)
                Text(listProductData.productDescription ?? "")
                    .font(.system(size: 16))
                    .foregroundStyle(Color(.systemGray3))
                Text(listProductData.productPrice ?? "")
                    .font(.system(size: 18, weight: .bold))
            }
            Spacer()
            
            Button(action: {
                
            }) {
                Image(systemName: "Pencil")
            }
        }
    }
}

#Preview {
    Group {
        ProductRowCell(listProductData: listProductsData[0])
        ProductRowCell(listProductData: listProductsData[1])
    }
}
