//
//  ArticleDetailView.swift
//  TenthMission
//
//  Created by Rafael on 12/26/23.
//

import SwiftUI
import WebKit

struct ArticleDetailView: View {
    var url: String?
    
    var body: some View {
        if let url = url, let urlObj = URL(string: url) {
            WebView(url: urlObj)
        } else {
            Text("No URL")
        }
    }
}

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

#Preview {
    ArticleDetailView()
}
