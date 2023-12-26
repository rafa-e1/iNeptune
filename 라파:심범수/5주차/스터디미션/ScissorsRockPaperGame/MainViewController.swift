//
//  MainViewController.swift
//  ScissorsRockPaperGame
//
//  Created by Rafael on 11/3/23.
//

import UIKit

class MainViewController: UIViewController {
    
    private lazy var statusLabel: UILabel = {
        let label = UILabel()
        label.text = "버튼을 선택해주세요!"
        return label
    }()
    
    private lazy var computerImageView: UIImageView = createImageView(withImageName: .rock)
    private lazy var myImageView: UIImageView = createImageView(withImageName: .rock)
    
    private lazy var imagesStackView: UIStackView = {
        let stackView = createHorizontalStackView(
            arrangedSubviews: [computerImageView, myImageView]
        )
        return stackView
    }()
    
    private lazy var scissorsButton: UIButton = createButton(
        title: SRP.scissors.title,
        backgroundColor: .color(forSRP: .scissors),
        action: #selector(scissorsButtonTapped)
    )
    
    private lazy var rockButton: UIButton = createButton(
        title: SRP.rock.title,
        backgroundColor: .color(forSRP: .rock),
        action: #selector(rockButtonTapped)
    )
    
    private lazy var paperButton: UIButton = createButton(
        title: SRP.paper.title,
        backgroundColor: .color(forSRP: .paper),
        action: #selector(paperButtonTapped)
    )
    
    private lazy var srpStackView: UIStackView = {
        let stackView = createHorizontalStackView(
            arrangedSubviews: [scissorsButton, rockButton, paperButton]
        )
        return stackView
    }()
    
    private let srpImageData: [SRP] = [.scissors, .rock, .paper]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func createImageView(withImageName imageName: SRP) -> UIImageView {
        let imageView = UIImageView(image: UIImage(named: imageName.rawValue))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }
    
    private func createHorizontalStackView(arrangedSubviews: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 10
        return stackView
    }
    
    private func createButton(
        title: String,
        backgroundColor: UIColor,
        action: Selector
    ) -> UIButton {
        let button = UIButton(type: .custom)
        button.setTitle(title, for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = backgroundColor
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.label.cgColor
        button.addTarget(self, action: action, for: .touchUpInside)
        return button
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
    
    private func buttonTapped(playerChoice: SRP) {
        myImageView.image = UIImage(named: playerChoice.rawValue)
        let randomImageView = srpImageData.randomElement()!
        computerImageView.image = UIImage(named: randomImageView.rawValue)
        updateStatusLabel(playerChoice: playerChoice, computerChoice: randomImageView)
    }
    
    @objc private func scissorsButtonTapped() {
        buttonTapped(playerChoice: .scissors)
    }
    
    @objc private func rockButtonTapped() {
        buttonTapped(playerChoice: .rock)
    }
    
    @objc private func paperButtonTapped() {
        buttonTapped(playerChoice: .paper)
    }
    
    private func updateStatusLabel(playerChoice: SRP, computerChoice: SRP) {
        if playerChoice == computerChoice {
            statusLabel.text = Result.draw.rawValue
        } else if playerChoice == .scissors && computerChoice == .paper ||
                    playerChoice == .rock && computerChoice == .scissors ||
                    playerChoice == .paper && computerChoice == .rock
        {
            statusLabel.text = Result.win.rawValue
        } else {
            statusLabel.text = Result.lose.rawValue
        }
    }
    
}
