//
//  SizeButtonView.swift
//  EighthMission
//
//  Created by Rafael on 12/5/23.
//

import SwiftUI

struct SizeButtonView: View {
    var size: String
    var isSelected: Bool
    var action: () -> Void

    var body: some View {
        Button(action: {
            action()
        }) {
            Image(systemName: isSelected ? "dot.circle.fill" : "circle")
                .imageScale(.large)
                .foregroundColor(isSelected ? .mint : .gray)
                .fontWeight(.bold)

            Text(size)
                .foregroundColor(.black)
                .font(.system(size: 20))
        }
    }
}
