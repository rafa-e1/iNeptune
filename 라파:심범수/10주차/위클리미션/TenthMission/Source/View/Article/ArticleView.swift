//
//  ArticleView.swift
//  TenthMission
//
//  Created by Rafael on 12/25/23.
//

import SwiftUI

struct ArticleView: View {
    @StateObject var articleVM = ArticleViewModel()
    
    var body: some View {
        NavigationView {
            List(articleVM.articles) { article in
                NavigationLink(destination: ArticleDetailView(url: article.url)) {
                    ArticleRow(article: article)
                }
            }
            .listStyle(.plain)
            .navigationBarTitle("뉴스")
            .onAppear {
                self.articleVM.getArticles()
            }
        }
    }
}

#Preview {
    ArticleView()
}
