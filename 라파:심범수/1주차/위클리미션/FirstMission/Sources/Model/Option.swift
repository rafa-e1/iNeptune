//
//  Option.swift
//  FirstMission
//
//  Created by Rafael on 10/14/23.
//

import Foundation

struct Option {
    let image: String
}

extension Option {
    static let items: [Option] = [
        Option(image: "delivery"),
        Option(image: "store"),
        Option(image: "cheap"),
    ]
}
