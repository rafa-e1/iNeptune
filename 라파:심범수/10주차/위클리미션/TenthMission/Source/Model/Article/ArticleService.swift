//
//  ArticleService.swift
//  TenthMission
//
//  Created by Rafael on 12/26/23.
//

import Foundation

struct ArticleService: Codable {
    var status:String?
    var totalResults:Int?
    var articles:[Article]?
}
