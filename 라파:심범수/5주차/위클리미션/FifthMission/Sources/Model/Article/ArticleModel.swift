//
//  ArticleModel.swift
//  FifthMission
//
//  Created by Rafael on 10/30/23.
//

import Foundation

protocol ArticleModelProtocol {
    func articlesRetrieved(articles: [Article])
}

class ArticleModel {
    
    var delegate: ArticleModelProtocol?
    
    func getArticles() {
        let urlString = "https://newsapi.org/v2/everything?q=tesla&from=2023-10-03&sortBy=publishedAt&apiKey=1b5ea3c15eae4e45ab353b9e4ee892fb"
        let url = URL(string: urlString)
        guard url != nil else {
            print("Couldn't create url object")
            return
        }
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url!) { data, response, error in
            if error == nil && data != nil {
                let decoder = JSONDecoder()
                do{
                    let articleService = try decoder.decode(ArticleService.self, from: data!)
                    
                    DispatchQueue.main.async {
                        if let articles = articleService.articles {
                            self.delegate?.articlesRetrieved(articles: articles)
                        } else {
                            print("Article array is nil")
                        }
                    }
                }
                catch {
                    print("Error parsing the json")
                }
            }
        }
        dataTask.resume()
    }
    
}
