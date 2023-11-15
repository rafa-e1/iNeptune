//
//  ProductRow.swift
//  SeventhMission
//
//  Created by Rafael on 11/14/23.
//

import SwiftUI

struct ProductRow: View {
    let products: Product
    
    var body: some View {
        NavigationLink(destination: Text("\(products.title)")) {
            ZStack(alignment: .bottomTrailing) {
                HStack(alignment: .top) {
                    Image(products.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 120)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    VStack(alignment: .leading) {
                        Text(products.title)
                            .padding(.bottom, 1)
                            .font(.system(size: 20, weight: .regular))
                            .foregroundColor(.black)
                            .lineLimit(2)
                        
                        Text(products.description)
                            .font(.system(size: 17, weight: .regular))
                            .foregroundColor(.gray)
                        
                        HStack{
                            if products.isReservation {
                                Text("예약중")
                                    .padding(
                                        EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10)
                                    )
                                    .background(Color.green)
                                    .clipShape(RoundedRectangle(cornerRadius: 5))
                                    .foregroundStyle(Color.white)
                                    .font(.system(size: 12, weight: .bold))
                            }
                            Text("\(products.price)")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(.black)
                        }
                    }
                    
                    Spacer()
                }
                
                HStack {
                    if products.numberOfHeart != 0 {
                        Image(systemName: "heart")
                            .font(.callout)
                            .foregroundColor(.gray)
                        
                        Text("\(products.numberOfHeart)")
                            .font(.callout)
                            .foregroundColor(.gray)
                    }
                    if products.numberOfComment != 0 {
                        Image(systemName: "message")
                            .font(.callout)
                            .foregroundColor(.gray)
                        Text("\(products.numberOfComment)")
                            .font(.callout)
                            .foregroundColor(.gray)
                    }
                }
            } // ZStack
        }
    }
}

#Preview {
    ProductRow(
        products:
            Product(
                imageName: "1",
                title: "에어팟 맥스 실버 팝니다",
                description: "부산광역시 북구 ・ 1일 전",
                price: 370_000,
                numberOfComment: 5,
                numberOfHeart: 23,
                isReservation: true
            )
    )
}
