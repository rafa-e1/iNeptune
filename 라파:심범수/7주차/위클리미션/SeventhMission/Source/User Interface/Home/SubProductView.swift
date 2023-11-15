//
//  SubProductView.swift
//  SeventhMission
//
//  Created by Rafael on 11/15/23.
//

import SwiftUI

struct SubProductView: View {
    var body: some View {
        VStack {
            Button(action: {}, label: {
                HStack {
                    Text("시원한 여름 간식의 계절 🍉🍧🍦")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .tint(Color.black)
                        .imageScale(.large)
                }
            })
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(Subproduct.items) {
                        SubProductRow(imageName: $0.imageName, title: $0.title, price: $0.price)
                            .padding(.vertical, 5)
                    }
                }
            }
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    SubProductView()
}
