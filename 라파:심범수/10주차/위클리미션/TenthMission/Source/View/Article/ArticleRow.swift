//
//  ArticleRow.swift
//  TenthMission
//
//  Created by Rafael on 12/25/23.
//

import SwiftUI
import Combine

struct ArticleRow: View {
    var article: Article
    
    var body: some View {
        HStack {
            if let imageUrl = article.urlToImage, let url = URL(string: imageUrl) {
                AsyncImage(url: url) { image in
                    image.resizable()
                } placeholder: {
                    Color.gray
                }
                .frame(width: 100, height: 100)
                .cornerRadius(10)
            }
            
            VStack(alignment: .leading) {
                Text(article.title ?? "No Title")
                    .font(.headline)
                    .lineLimit(1)
                Text(article.description ?? "No Description")
                    .font(.subheadline)
                    .lineLimit(3)
            }
        }
    }
}

#Preview {
    ArticleRow(article: Article())
}
