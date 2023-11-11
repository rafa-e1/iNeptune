//
//  RoundedCorner+Extension.swift
//  SixthMission
//
//  Created by Rafael on 11/11/23.
//

import SwiftUI

struct RoundedCorner: Shape {
    var cornerRadius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: cornerRadius, height: cornerRadius)
        )
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ cornerRadius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(cornerRadius: cornerRadius, corners: corners))
    }
}
