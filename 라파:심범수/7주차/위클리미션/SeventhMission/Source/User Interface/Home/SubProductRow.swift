//
//  SubProductRow.swift
//  SeventhMission
//
//  Created by Rafael on 11/15/23.
//

import SwiftUI

struct SubProductRow: View {
    @State var imageName: String
    @State var title: String
    @State var price: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Text(title)
                .frame(width: 120)
                .lineLimit(2)
                .padding(EdgeInsets(top: 1, leading: 0, bottom: 0, trailing: 0))
            
            Text("\(price)원")
                .fontWeight(.bold)
                .padding(EdgeInsets(top: 1, leading: 0, bottom: 0, trailing: 0))
        }
    }
}

#Preview {
    SubProductRow(imageName: "1", title: "에어팟 맥스 실버 팝니다", price: 370_000)
}
