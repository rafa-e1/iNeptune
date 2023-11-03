//
//  SRP.swift
//  ScissorsRockPaperGame
//
//  Created by Rafael on 11/3/23.
//

import UIKit

enum SRP: String {
    case scissors
    case rock
    case paper
    
    var title: String {
        switch self {
        case .scissors:
            return "가위"
        case .rock:
            return "바위"
        case .paper:
            return "보"
        }
    }
}

extension UIColor {
    static func color(forSRP srp: SRP) -> UIColor {
        switch srp {
        case .scissors:
            return UIColor(named: "scissors")!
        case .rock:
            return UIColor(named: "rock")!
        case .paper:
            return UIColor(named: "paper")!
        }
    }
}
