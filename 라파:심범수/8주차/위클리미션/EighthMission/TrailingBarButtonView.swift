//
//  TrailingBarButtonView.swift
//  EighthMission
//
//  Created by Rafael on 12/1/23.
//

import SwiftUI

struct TrailingBarButtonView: View {
    var imageName: String
    
    var body: some View {
        Button(action: {}) {
            Image(systemName: imageName)
                .fontWeight(.medium)
                .imageScale(.large)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    TrailingBarButtonView(imageName: "list.bullet")
}
