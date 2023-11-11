//
//  SubCategoryView.swift
//  SixthMission
//
//  Created by Rafael on 11/11/23.
//

import SwiftUI

struct SubCategoryView: View {
    private let subCateTitle = ["포장", "전국별미", "선물하기"]
    private let circleSize: CGFloat = 60
    
    var body: some View {
        HStack(spacing: 20) {
            ForEach(0..<3, id: \.self) { columnIndex in
                Button(action: {
                    print("\(subCateTitle[columnIndex])")
                }, label: {
                    VStack(spacing: 5) {
                        Rectangle()
                            .frame(width: circleSize, height: circleSize)
                            .cornerRadius(20)
                            .foregroundColor(Color("background"))
                        
                        Text(subCateTitle[columnIndex])
                            .font(.system(size: 13))
                            .foregroundColor(.black)
                    }
                })
            }
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width)
        .padding(EdgeInsets(top: 15, leading: 30, bottom: 10, trailing: 0))
        .background(Color.white)
        .padding(.bottom, 10)
    }
}

#Preview {
    SubCategoryView()
}
