//
//  NextPageViewController.swift
//  WeeklyMission1st
//
//  Created by 제민우 on 2023/09/24.
//

import UIKit

class NextPageViewController: UIViewController {
    
    private let button = BaeminOneMenuButton(buttonImage: "CupCake", buttonTitle: "다음화면이요")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 100),
            button.widthAnchor.constraint(equalToConstant: 80)
        ])
    }
}
