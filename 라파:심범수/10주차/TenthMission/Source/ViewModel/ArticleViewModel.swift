//
//  ArticleViewModel.swift
//  TenthMission
//
//  Created by Rafael on 12/26/23.
//

import SwiftUI

class ArticleViewModel: ObservableObject {
    
    @Published var articles = [Article]()

    init() {
        getArticles()
    }

    func getArticles() {
        let urlString = "https://newsapi.org/v2/everything?q=tesla&from=2023-11-26&sortBy=publishedAt&apiKey=1b5ea3c15eae4e45ab353b9e4ee892fb"
        guard let url = URL(string: urlString) else {
            print("Couldn't create url object")
            return
        }

        URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            if let data = data {
                let decoder = JSONDecoder()
                if let articleService = try? decoder.decode(ArticleService.self, from: data) {
                    DispatchQueue.main.async {
                        self?.articles = articleService.articles ?? []
                    }
                } else {
                    print("Error parsing the json")
                }
            }
        }.resume()
    }
    
}
