//
//  BaeminOneButton.swift
//  WeeklyMission6th
//
//  Created by 제민우 on 11/15/23.
//

import SwiftUI

struct BaeminOneButton: View {
    
    var baeminOneButtonImage: String
    var baeminOneButtonText: String
    
    var body: some View {
        Button(action: { }, label: {
            VStack {
                Image(baeminOneButtonImage)
                    .resizable()
                    .scaledToFit()
                Text(baeminOneButtonText)
                    .font(.system(size: 14, weight: .regular))
                    .foregroundStyle(Color.black)
            }
        })
    }
}

#Preview {
    BaeminOneButton(baeminOneButtonImage: "주문1", baeminOneButtonText: "알뜰배달")
}
