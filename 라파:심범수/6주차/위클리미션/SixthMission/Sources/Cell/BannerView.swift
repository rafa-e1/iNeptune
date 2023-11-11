//
//  BannerView.swift
//  SixthMission
//
//  Created by Rafael on 11/11/23.
//

import SwiftUI

struct BannerView: View {
    @State private var currentIndex = 0
    @State private var timer: Timer?

    private let colors: [Color] = [.red, .indigo, .green, .orange, .blue, .yellow, .cyan, .brown, .purple]

    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(0..<colors.count, id: \.self) { index in
                Rectangle()
                    .fill(Color(colors[index]))
                    .tag(index)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        .onAppear {
            startTimer()
        }
        .onDisappear {
            stopTimer()
        }
    }

    private func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { _ in
            withAnimation {
                currentIndex = (currentIndex + 1) % colors.count
            }
        }
    }

    private func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
}

#Preview {
    BannerView()
}
