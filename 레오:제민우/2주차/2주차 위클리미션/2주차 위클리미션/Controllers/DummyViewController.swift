//
//  DummyViewController.swift
//  2주차 위클리미션
//
//  Created by 제민우 on 2023/10/02.
//

import UIKit

class DummyViewController: UIViewController {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Dummy Page"
        label.font = UIFont.systemFont(ofSize: 30)
        
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureSubViews()
    }
    
    override func updateViewConstraints() {
        configureLayout()

        super.updateViewConstraints()
    }
}

extension DummyViewController {
    
    private func configureSubViews() {
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func configureLayout() {
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
        ])
    }
}
