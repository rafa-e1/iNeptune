//
//  HeaderImageView.swift
//  EighthMission
//
//  Created by Rafael on 12/1/23.
//

import SwiftUI

struct HeaderImageView: View {
    @State private var offsetY: CGFloat = CGFloat.zero
    
    var body: some View {
        GeometryReader { geometry in
            let offset = geometry.frame(in: .global).minY
            setOffet(offset: offset)
            Image("food")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
                .frame(width: geometry.size.width, height: 250 + (offset > 0 ? offset : 0))
                .offset(y: (offset > 0 ? -offset : 0))
        }
        .frame(minHeight: 250)
    }
    
    private func setOffet(offset: CGFloat) -> some View {
        DispatchQueue.main.async {
            self.offsetY = offset
        }
        return EmptyView()
    }
}

#Preview {
    HeaderImageView()
}
