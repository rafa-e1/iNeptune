//
//  ArticleService.swift
//  FifthMission
//
//  Created by Rafael on 10/30/23.
//

import Foundation

struct ArticleService:Codable {
    var status:String?
    var totalResults:Int?
    var articles:[Article]?
}
