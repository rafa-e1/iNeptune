//
//  ViewController.swift
//  2주차 스터디미션
//
//  Created by 제민우 on 2023/10/06.
//

import UIKit

final class ViewController: UIViewController {

    private let diceImageNameData = ["Dice1", "Dice2", "Dice3", "Dice4", "Dice5", "Dice6"]
    
    private var diceImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "Dice1"))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private var secondDiceImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "Dice1"))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private var diceStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private let doubleLabel: UILabel = {
        let label = UILabel()
        label.text = "주사위를 굴려주세요"
        return label
    }()
    
    private lazy var changeButton: UIButton = {
        let button = UIButton()
        button.setTitle("바꾸기", for: .normal)
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(didTapChangeButton), for: .touchUpInside)
        return button
    }()
    
    @objc private func didTapChangeButton() {
        let firstDice = diceImageNameData.randomElement() ?? "one"
        let secondDice = diceImageNameData.randomElement() ?? "one"

        diceImageView.image = UIImage(named: firstDice)
        secondDiceImageView.image = UIImage(named: secondDice)
        
        if firstDice == secondDice {
            doubleLabel.text = "더블!"
        } else {
            doubleLabel.text = "다시 굴려주세요!"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
        
    }
}

extension ViewController {
    private func configureLayout() {
        
        let safeArea = view.safeAreaLayoutGuide
        
        [diceImageView, secondDiceImageView].forEach {
            diceStackView.addArrangedSubview($0)
//            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        [diceStackView, doubleLabel, changeButton].forEach {
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            
            diceStackView.heightAnchor.constraint(equalToConstant: 300),
            diceStackView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            diceStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            diceStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20),
            
            doubleLabel.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            doubleLabel.topAnchor.constraint(equalTo: diceStackView.bottomAnchor, constant: 30),
            
            changeButton.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            changeButton.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 100),
            changeButton.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -30)
        ])
    }
}
