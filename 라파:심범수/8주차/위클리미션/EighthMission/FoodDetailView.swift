//
//  FoodDetailView.swift
//  EighthMission
//
//  Created by Rafael on 12/1/23.
//

import SwiftUI

struct FoodDetailView: View {
    var body: some View {
        Text("[재주문1위] 시그니처햄버거")
            .padding(EdgeInsets(top: 15, leading: 15, bottom: 5, trailing: 15))
            .font(.title)
            .fontWeight(.bold)
        
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Coniuncta doloris fabulas assentior concursionibus, pecuniae.")
            .padding(.horizontal)
            .font(.system(size: 20))
            .fontWeight(.regular)
            .foregroundColor(.gray)
        
        Button(action: {}, label: {
            Text("영양성분 및 알레르기성분 표시 보기")
                .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                .background(.ultraThinMaterial)
                .cornerRadius(20)
                .padding(EdgeInsets(top: 0, leading: 15, bottom: 15, trailing: 15))
                .font(.system(size: 15))
                .fontWeight(.light)
                .foregroundColor(.primary)
        })
        
        Rectangle()
            .foregroundColor(Color("divider"))
    }
}

#Preview {
    FoodDetailView()
}
