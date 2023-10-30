//
//  NextViewController.swift
//  4주차 위클리미션
//
//  Created by 제민우 on 10/30/23.
//

import UIKit

final class NextViewController: UIViewController {
    
    var userID: String = ""
    var userPW: String = ""
    
    private var userDataLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14)
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureLayout()
        userDataLabel.text = "userID: \(userID) \n password: \(userPW)"
    }
    
    private func configureLayout() {
        view.addSubview(userDataLabel)
        userDataLabel.translatesAutoresizingMaskIntoConstraints = false
        userDataLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        userDataLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
