//
//  Article.swift
//  FifthMission
//
//  Created by Rafael on 10/30/23.
//

import Foundation

struct Article: Codable {
    var author:String?
    var title:String?
    var description:String?
    var url:String?
    var urlToImage:String?
    var publishedAt:String?
}
