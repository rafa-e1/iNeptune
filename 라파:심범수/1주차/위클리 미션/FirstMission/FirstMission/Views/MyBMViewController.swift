//
//  MyBMViewController.swift
//  FirstMission
//
//  Created by Rafael on 2023/09/18.
//

import UIKit

class MyBMViewController: UIViewController {

    private lazy var mainLabel: UILabel = {
        let label = UILabel()
        label.text = "my배민"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(mainLabel)
        
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

}
