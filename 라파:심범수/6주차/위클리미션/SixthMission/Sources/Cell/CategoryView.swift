//
//  CategoryView.swift
//  SixthMission
//
//  Created by Rafael on 11/11/23.
//

import SwiftUI

struct CategoryView: View {
    let width = UIScreen.main.bounds.width
    let mainCateTitle = ["알뜰배달", "배달", "배민스토어"]
    let mainCateSubtitle = ["쿠폰 골라 받기", "세상은 넓고 \n맛집은 많다", "배달은 지금 \n옵니다"]
    
    var body: some View {
        LazyHGrid(rows: [GridItem(.flexible())], spacing: 20) {
            ForEach(0..<3, id: \.self) { index in
                Button(action: {
                    print("\(mainCateTitle[index])")
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .frame(width: width / 3.7, height: 100)
                        
                        VStack(alignment: .leading) {
                            Text(mainCateTitle[index])
                                .bold()
                                .foregroundStyle(.black)
                                .font(.system(size: 20, weight: .bold, design: .default))
                            
                            Text(mainCateSubtitle[index])
                                .foregroundStyle(.black)
                                .font(.system(size: 15, weight: .light, design: .default))
                                .lineLimit(2)
                        }
                    }
                })
            }
        }
    }
}

#Preview {
    CategoryView()
}
