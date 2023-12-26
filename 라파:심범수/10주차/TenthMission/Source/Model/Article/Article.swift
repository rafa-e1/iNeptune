//
//  Article.swift
//  TenthMission
//
//  Created by Rafael on 12/25/23.
//

import Foundation

struct Article: Codable, Identifiable {
    var id: String { url ?? UUID().uuidString }
    var author:String?
    var title:String?
    var description:String?
    var url:String?
    var urlToImage:String?
    var publishedAt:String?
}
