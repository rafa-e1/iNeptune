//
//  ViewController.swift
//  PracticingUIKit
//
//  Created by 성대훈 on 2023/09/27.
//

import UIKit

class ViewController: UIViewController {
    
    var diceImageData: Array = ["one","two","three","four","five","six"]
    
    @IBOutlet weak var diceButton: UIButton!
    
    @IBOutlet weak var diceImageView: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceButton.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        diceButton.tintColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        diceButton.layer.cornerRadius = 20
        diceImageView.image = UIImage(named: "one")
        
        
    }
    
    
    
    @IBAction func diceButtonDidTapped(_ sender: UIButton) {
        diceImageView.image = UIImage(named: diceImageData.randomElement() ?? "one")
        diceImageView2.image = UIImage(named: diceImageData.randomElement() ?? "one")
    }
    
}

