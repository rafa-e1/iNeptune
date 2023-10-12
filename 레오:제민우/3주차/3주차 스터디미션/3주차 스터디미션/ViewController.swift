//
//  ViewController.swift
//  3주차 스터디미션
//
//  Created by 제민우 on 2023/10/12.
//

import UIKit

final class ViewController: UIViewController {

    private let gameImageNameData = ["Rock", "Scissors", "Paper"]
    
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
        let kind = sender.titleLabel?.text
        let randomInput = gameImageNameData.randomElement()
        computerImageView.image = UIImage(named: randomInput!)
        if kind == "묵" {
            myImageView.image = UIImage(named: "Rock")
        } else if kind == "찌" {
            myImageView.image = UIImage(named: "Scissors")
        } else {
            myImageView.image = UIImage(named: "Paper")
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
        
        [rpsImageStackView, rpsButtonStackView].forEach {
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            
            rpsImageStackView.heightAnchor.constraint(equalToConstant: 200),
            rpsImageStackView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            rpsImageStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            rpsImageStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20),
            
            rpsButtonStackView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            rpsButtonStackView.heightAnchor.constraint(equalToConstant: 100),
            rpsButtonStackView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -200),
            rpsButtonStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20)
        ])
    }
}


