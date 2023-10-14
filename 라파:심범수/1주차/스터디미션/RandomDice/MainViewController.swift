//
//  MainViewController.swift
//  RandomDice
//
//  Created by Rafael on 2023/09/17.
//

import UIKit

class MainViewController: UIViewController {
    
    let diceImageData = ["one", "two", "three", "four", "five", "six"]
    
    private lazy var diceImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "one"))
        return imageView
    }()
    
    private lazy var changeDiceButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Change", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemYellow
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.label.cgColor
        button.addTarget(self, action: #selector(changeDiceButtonTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI() {
        view.backgroundColor = .systemBackground
        view.addSubview(diceImageView)
        view.addSubview(changeDiceButton)
        
        diceImageView.translatesAutoresizingMaskIntoConstraints = false
        changeDiceButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            diceImageView.widthAnchor.constraint(equalToConstant: 300),
            diceImageView.heightAnchor.constraint(equalToConstant: 300),
            diceImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            diceImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            changeDiceButton.widthAnchor.constraint(equalToConstant: 200),
            changeDiceButton.heightAnchor.constraint(equalToConstant: 50),
            changeDiceButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            changeDiceButton.topAnchor.constraint(equalTo: diceImageView.bottomAnchor, constant: 100),
        ])
    }
    
    @objc func changeDiceButtonTapped() {
        diceImageView.image = UIImage(named: diceImageData.randomElement() ?? "one")
    }
    
}
