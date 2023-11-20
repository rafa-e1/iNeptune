//
//  TableView.swift
//  WeeklyMission7th
//
//  Created by 제민우 on 11/20/23.
//

import SwiftUI

struct ProductList: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(listProductsData.indices, id: \.self) { index in
                    if index == 4 {
                        HorizontalScrollView()
                    } else {
                        ProductRowCell(listProductData: listProductsData[index])
                            .padding()
                            .overlay(
                                Divider()
                                    .background(Color(UIColor.systemGray5)), alignment: .bottom
                                )
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    ProductList()
}

struct HorizontalScrollView: View {
    var body: some View {
        VStack(alignment: .leading, content:  {
            HStack {
                Text("수능 끝! 새로운 시작을 응원해요 🧡")
                    .font(.system(size: 20, weight: .bold))
                Spacer()
                Button(action: {
                    
                }, label: {
                    Image(systemName: "chevron.right")
                        .foregroundStyle(.black)
                })
            }
            .padding()
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(horizontalProductData.indices, id: \.self) { subIndex in
                        HorizontalScrollViewCell(horizontalProductDatas: horizontalProductData[subIndex])
                    }
                }
            }
            .padding(.leading)
        })
    }
}
