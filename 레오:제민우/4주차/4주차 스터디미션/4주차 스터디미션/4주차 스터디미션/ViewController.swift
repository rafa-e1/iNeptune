//
//  ViewController.swift
//  4주차 스터디미션
//
//  Created by 제민우 on 11/3/23.
//

import UIKit

final class ViewController: UIViewController {

    private let gameImageNameData = ["묵", "찌", "빠"]
    
    private let comLabel: UILabel = {
        let label = UILabel()
        label.text = "COM"
        label.font = .systemFont(ofSize: 14)
        return label
    }()
    
    private let userLabel: UILabel = {
        let label = UILabel()
        label.text = "USER"
        label.font = .systemFont(ofSize: 14)
        return label
    }()

    
    private var myImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "Rock"))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private var computerImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "Rock"))
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    private var rpsImageStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.layer.borderWidth = 1
        stackView.layer.borderColor = UIColor.systemPink.cgColor
        return stackView
    }()

    private let gameResultLabel: UILabel = {
        let label = UILabel()
        label.text = "주사위를 굴려주세요"
        return label
    }()
    
    
    private lazy var rockButton: UIButton = {
        let button = UIButton()
        button.setTitle("묵", for: .normal)
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(didTapChangeButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var scissorsButton: UIButton = {
        let button = UIButton()
        button.setTitle("찌", for: .normal)
        button.backgroundColor = .systemMint
        button.addTarget(self, action: #selector(didTapChangeButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var paperButton: UIButton = {
        let button = UIButton()
        button.setTitle("빠", for: .normal)
        button.backgroundColor = .systemPink
        button.addTarget(self, action: #selector(didTapChangeButton), for: .touchUpInside)
        return button
    }()
    
    private var rpsButtonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    @objc private func didTapChangeButton(_ sender: UIButton) {

        let comInput = gameImageNameData.randomElement()
        computerImageView.image = UIImage(named: comInput!)

        let userInput = sender.titleLabel?.text
        if userInput == "묵" {
            myImageView.image = UIImage(named: "묵")
        } else if userInput == "찌" {
            myImageView.image = UIImage(named: "찌")
        } else {
            myImageView.image = UIImage(named: "빠")
        }
        
        if comInput == userInput {
            gameResultLabel.text = "비겼다!"
        } else if comInput == "묵" && userInput == "찌" {
            gameResultLabel.text = "졌다!"
        } else if comInput == "찌" && userInput == "빠" {
            gameResultLabel.text = "졌다!"
        } else if comInput == "빠" && userInput == "묵" {
            gameResultLabel.text = "졌다!"
        } else {
            gameResultLabel.text = "이겼다!"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
        view.backgroundColor = .white
        
    }
}

extension ViewController {
    private func configureLayout() {
        
        let safeArea = view.safeAreaLayoutGuide
        
        [myImageView, computerImageView].forEach {
            rpsImageStackView.addArrangedSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        [rockButton, scissorsButton, paperButton].forEach {
            rpsButtonStackView.addArrangedSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        [userLabel, comLabel, rpsImageStackView, gameResultLabel, rpsButtonStackView].forEach {
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            
            userLabel.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 20),
            userLabel.leadingAnchor.constraint(equalTo: rpsImageStackView.leadingAnchor),
            
            comLabel.centerYAnchor.constraint(equalTo: userLabel.centerYAnchor),
            comLabel.trailingAnchor.constraint(equalTo: rpsImageStackView.trailingAnchor),
            
            rpsImageStackView.heightAnchor.constraint(equalToConstant: 200),
            rpsImageStackView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            rpsImageStackView.topAnchor.constraint(equalTo: comLabel.topAnchor, constant: 50),
            rpsImageStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20),
            
            gameResultLabel.topAnchor.constraint(equalTo: rpsImageStackView.bottomAnchor, constant: 20),
            gameResultLabel.centerXAnchor.constraint(equalTo: rpsImageStackView.centerXAnchor),
            
            rpsButtonStackView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            rpsButtonStackView.heightAnchor.constraint(equalToConstant: 100),
            rpsButtonStackView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -200),
            rpsButtonStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20)
        ])
    }
}


