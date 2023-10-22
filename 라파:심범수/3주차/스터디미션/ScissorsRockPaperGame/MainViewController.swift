//
//  MainViewController.swift
//  ScissorsRockPaperGame
//
//  Created by Rafael on 10/12/23.
//

import UIKit

class MainViewController: UIViewController {
    
    private let srpImageData = ["scissors", "rock", "paper"]
    
    private lazy var statusLabel: UILabel = {
        let label = UILabel()
        label.text = "버튼을 선택해주세요!"
        return label
    }()
    
    private lazy var computerImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "rock"))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var myImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "rock"))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var imagesStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [computerImageView, myImageView])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 10
        return stackView
    }()
    
    private lazy var scissorsButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("가위", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.4610093832, green: 0.83653754, blue: 0.9971148372, alpha: 1)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.label.cgColor
        button.addTarget(self, action: #selector(scissorsButtonDidTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var rockButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("바위", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.8417581916, green: 0.5141333938, blue: 1, alpha: 1)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.label.cgColor
        button.addTarget(self, action: #selector(rockButtonDidTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var paperButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("보", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.4777789116, green: 0.5027813911, blue: 0.9961470962, alpha: 1)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.label.cgColor
        button.addTarget(self, action: #selector(paperButtonDidTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var srpStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [scissorsButton, rockButton, paperButton])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 10
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .systemBackground
        view.addSubview(statusLabel)
        view.addSubview(imagesStackView)
        view.addSubview(srpStackView)
        
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        imagesStackView.translatesAutoresizingMaskIntoConstraints = false
        srpStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            statusLabel.bottomAnchor.constraint(equalTo: imagesStackView.topAnchor, constant: -10),
            statusLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            imagesStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imagesStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imagesStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            imagesStackView.heightAnchor.constraint(equalToConstant: 200),
            
            srpStackView.topAnchor.constraint(equalTo: imagesStackView.bottomAnchor, constant: 10),
            srpStackView.centerXAnchor.constraint(equalTo: imagesStackView.centerXAnchor),
            srpStackView.leadingAnchor.constraint(equalTo: imagesStackView.leadingAnchor),
            srpStackView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    @objc private func scissorsButtonDidTapped() {
        myImageView.image = UIImage(named: "scissors")
        computerImageView.image = UIImage(named: srpImageData.randomElement() ?? "rock")
    }
    
    @objc private func rockButtonDidTapped() {
        myImageView.image = UIImage(named: "rock")
        computerImageView.image = UIImage(named: srpImageData.randomElement() ?? "rock")
    }
    
    @objc private func paperButtonDidTapped() {
        myImageView.image = UIImage(named: "paper")
        computerImageView.image = UIImage(named: srpImageData.randomElement() ?? "rock")
    }
    
}
