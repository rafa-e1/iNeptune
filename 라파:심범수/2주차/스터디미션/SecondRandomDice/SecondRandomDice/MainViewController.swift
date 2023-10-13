//
//  MainViewController.swift
//  SecondRandomDice
//
//  Created by Rafael on 10/12/23.
//

import UIKit

class MainViewController: UIViewController {
    
    let diceImageData = ["one", "two", "three", "four", "five", "six"]
    
    private lazy var diceImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "one"))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var secondDiceImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "one"))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var dicesStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [diceImageView, secondDiceImageView])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 10
        return stackView
    }()
    
    private lazy var doubleLabel: UILabel = {
        let label = UILabel()
        label.text = "주사위를 굴려주세요!"
        return label
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
        view.addSubview(dicesStackView)
        view.addSubview(doubleLabel)
        view.addSubview(changeDiceButton)
        
        dicesStackView.translatesAutoresizingMaskIntoConstraints = false
        doubleLabel.translatesAutoresizingMaskIntoConstraints = false
        changeDiceButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            dicesStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dicesStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            dicesStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            dicesStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            dicesStackView.heightAnchor.constraint(equalToConstant: 200),
            
            doubleLabel.topAnchor.constraint(equalTo: dicesStackView.bottomAnchor, constant: 20),
            doubleLabel.centerXAnchor.constraint(equalTo: dicesStackView.centerXAnchor),
            
            changeDiceButton.widthAnchor.constraint(equalToConstant: 200),
            changeDiceButton.heightAnchor.constraint(equalToConstant: 50),
            changeDiceButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            changeDiceButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
        ])
    }
    
    @objc func changeDiceButtonTapped() {
        let firstDice = diceImageData.randomElement() ?? "one"
        let secondDice = diceImageData.randomElement() ?? "one"
        
        diceImageView.image = UIImage(named: firstDice)
        secondDiceImageView.image = UIImage(named: secondDice)
        
        if firstDice == secondDice {
            doubleLabel.text = "더블!"
        } else {
            doubleLabel.text = "다시 굴려주세요!"
        }
    }
    
}
