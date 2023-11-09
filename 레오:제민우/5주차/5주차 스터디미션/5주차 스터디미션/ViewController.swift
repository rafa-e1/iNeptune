//
//  ViewController.swift
//  5주차 스터디미션
//
//  Created by 제민우 on 11/9/23.
//

import UIKit

enum InputState: String {
    case scissors
    case rock
    case paper
}

enum GameResult: String {
    case win = "이겼다"
    case draw = "비겼다"
    case lose = "졌다"
}

final class GameButton: UIButton {
    var gameTag: InputState = .rock
}

final class ViewController: UIViewController {

    private let gameImageNameData:[InputState] = [.scissors, .rock, .paper]
    
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
    
    
    private lazy var rockButton: GameButton = {
        let button = GameButton()
        button.setTitle("묵", for: .normal)
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(didTapChangeButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var scissorsButton: GameButton = {
        let button = GameButton()
        button.setTitle("찌", for: .normal)
        button.backgroundColor = .systemMint
        button.addTarget(self, action: #selector(didTapChangeButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var paperButton: GameButton = {
        let button = GameButton()
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
        guard let sender = sender as? GameButton else { return }
        
        switch sender.gameTag {
        case .scissors:
            myImageView.image = UIImage(named: "scissors")
        case .rock:
            myImageView.image = UIImage(named: "rock")
        case .paper:
            myImageView.image = UIImage(named: "paper")

        }
        
        let randomInput = gameImageNameData.randomElement()!
        computerImageView.image = UIImage(named: randomInput.rawValue)
        gameResultLabel.text = fetchGameResult(myInput: sender.gameTag, computerInput: randomInput).rawValue
    }
    
    private func fetchGameResult(myInput: InputState, computerInput: InputState) -> GameResult {
        switch (myInput, computerInput) {
        case (.scissors, .scissors):
            return .draw
        case (.scissors, .rock):
            return .lose
        case (.scissors, .paper):
            return .win
            
        case (.rock, .rock):
            return .draw
        case (.rock, .paper):
            return .lose
        case (.rock, .scissors):
            return .win
            
        case (.paper, .paper):
            return .draw
        case (.paper, .scissors):
            return .lose
        case (.paper, .rock):
            return .win
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
        view.backgroundColor = .white
        scissorsButton.gameTag = .scissors
        rockButton.gameTag = .rock
        paperButton.gameTag = .paper
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


