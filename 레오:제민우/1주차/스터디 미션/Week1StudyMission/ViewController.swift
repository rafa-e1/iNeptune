//
//  ViewController.swift
//  Week1StudyMission
//
//  Created by 제민우 on 2023/09/27.
//

import UIKit

final class ViewController: UIViewController {

    private let diceImageNameData = ["Dice1", "Dice2", "Dice3", "Dice4", "Dice5", "Dice6"]
    
    private var diceImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "Dice1"))
        return imageView
    }()
    
    private lazy var changeButton: UIButton = {
        let button = UIButton()
        button.setTitle("바꾸기", for: .normal)
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(didTapChangeButton), for: .touchUpInside)
        return button
    }()
    
    @objc private func didTapChangeButton() {
        diceImageView.image = UIImage(named: diceImageNameData.randomElement() ?? "one")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
        
    }
}

extension ViewController {
    private func configureLayout() {
        
        let safeArea = view.safeAreaLayoutGuide
        
        [diceImageView, changeButton].forEach {
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            diceImageView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            diceImageView.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor),
            diceImageView.widthAnchor.constraint(equalTo: diceImageView.heightAnchor),
            diceImageView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 200),
            
            
            changeButton.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            changeButton.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 100),
            changeButton.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -30)
        ])
    }
}
