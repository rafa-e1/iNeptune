//
//  FilledButton.swift
//  TenthMission
//
//  Created by Rafael on 12/25/23.
//

import SwiftUI

struct FilledButton: View {
    var title: String
    var action: () -> Void
    var titleColor: Color
    var backgroundColor: Color  // 배경색을 위한 새로운 매개변수
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .padding()
                .frame(maxWidth: .infinity)
                .background(backgroundColor)
                .foregroundColor(titleColor)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

#Preview {
    VStack {
        FilledButton(title: "파랑색 버튼", action: {
            print("파랑색 버튼 탭")
        }, titleColor: .white, backgroundColor: .blue)
        
        FilledButton(title: "노란색 버튼", action: {
            print("노란색 버튼 탭")
        }, titleColor: .black, backgroundColor: .yellow)
        
        FilledButton(title: "검정색 버튼", action: {
            print("검정색 버튼 탭")
        }, titleColor: .white, backgroundColor: .black)
    }
}
