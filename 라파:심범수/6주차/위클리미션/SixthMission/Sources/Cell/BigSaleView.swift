//
//  BigSaleView.swift
//  SixthMission
//
//  Created by Rafael on 11/11/23.
//

import SwiftUI

struct BigSaleView: View {
    private let firstSubCateTitle = ["인기상품", "신상품", "특가", "쌀・잡곡", "화장지"]
    private let secondSubCateTitle = ["생수・음료", "즉석밥", "통조림", "헤어・바디", "건강식품"]
    private let numberOfColumns = 5
    private let circleSize: CGFloat = 50
    
    var body: some View {
        VStack {
            Button(action: {}, label: {
                HStack {
                    Text("대용량 특가")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.black)
                    Text("많이 살수록 더 저렴하죠")
                        .font(.system(size: 15, weight: .light))
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .tint(Color.black)
                        .imageScale(.large)
                }
            })
            .padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
            
            HStack(spacing: 20) {
                ForEach(0..<numberOfColumns, id: \.self) { columnIndex in
                    Button(action: {
                        print("\(firstSubCateTitle[columnIndex])")
                    }, label: {
                        VStack(spacing: 5) {
                            Circle()
                                .frame(width: circleSize, height: circleSize)
                                .foregroundColor(Color("background"))
                            
                            Text(firstSubCateTitle[columnIndex])
                                .font(.system(size: 13))
                                .foregroundColor(.black)
                        }
                    })
                }
            }
            .padding(.bottom, 10)
            
            HStack(spacing: 20) {
                ForEach(0..<numberOfColumns, id: \.self) { columnIndex in
                    Button(action: {
                        print("\(secondSubCateTitle[columnIndex])")
                    }, label: {
                        VStack(spacing: 5) {
                            Circle()
                                .frame(width: circleSize, height: circleSize)
                                .foregroundColor(Color("background"))
                            
                            Text(secondSubCateTitle[columnIndex])
                                .font(.system(size: 13))
                                .foregroundColor(.black)
                        }
                    })
                }
            }
            .padding(.bottom, 15)
        }
        .background(Color.white)
        .cornerRadius(15)
        .padding(.horizontal)
    }
}

#Preview {
    BigSaleView()
}
