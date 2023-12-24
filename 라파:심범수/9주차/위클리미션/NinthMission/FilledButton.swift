//
//  FilledButton.swift
//  NinthMission
//
//  Created by Rafael on 12/24/23.
//

import SwiftUI

struct FilledButton: View {
    var title: String
    var action: () -> Void
    
    var body: some View {
        Button(title, action: action)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
