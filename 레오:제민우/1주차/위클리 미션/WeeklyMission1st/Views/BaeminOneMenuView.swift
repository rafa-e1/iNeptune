//
//  baeminOneMenuView.swift
//  WeeklyMission1st
//
//  Created by 제민우 on 2023/09/29.
//

import UIKit

final class BaeminOneMenuView: UIView {
    
    private let baeminOneMainLabel: UILabel = {
        let label = UILabel()
        label.text = "알뜰∙한집배달"
        label.font = UIFont(name: "BMHANNAProOTF", size: 24)
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        label.textColor = .black
        return label
    }()
    
    private let baeminOneSubLabel: UILabel = {
        let label = UILabel()
        label.text = "배민1"
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        label.textColor = .black
        return label
    }()
    
    private let baeminOneDescriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "원하는 대로 골라 주문!"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        label.textColor = .black
        return label
    }()
    
    private let baeminOneLabelStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    private let baeminOneButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.tintColor = .black
        return button
    }()
    
    private lazy var baeminOneHedingStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [baeminOneLabelStackView, baeminOneButton])
        stackView.axis = .horizontal
        stackView.spacing = 40
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    let baeminOneSavingDeliveryButton = BaeminOneMenuButton(buttonImage: "CupCake", buttonTitle: "알뜰배달")
    let baeminOneCuttletButton = BaeminOneMenuButton(buttonImage: "CupCake", buttonTitle: "돈까스∙회")
    let baeminOnePizzaButton = BaeminOneMenuButton(buttonImage: "CupCake", buttonTitle: "피자")
    let baeminOneChineseButton = BaeminOneMenuButton(buttonImage: "CupCake", buttonTitle: "중식")
    let baeminOneChickenButton = BaeminOneMenuButton(buttonImage: "CupCake", buttonTitle: "치킨")
    let baeminOneBuggerButton = BaeminOneMenuButton(buttonImage: "CupCake", buttonTitle: "버거")
    let baeminOneSnackButton = BaeminOneMenuButton(buttonImage: "CupCake", buttonTitle: "분식")
    let baeminOneDissertButton = BaeminOneMenuButton(buttonImage: "CupCake", buttonTitle: "디저트")
    let baeminOnePigFootButton = BaeminOneMenuButton(buttonImage: "CupCake", buttonTitle: "족발∙보쌈")
    let baeminOneAllButton = BaeminOneMenuButton(buttonImage: "CupCake", buttonTitle: "전체보기")
    
    private let baeminOneButtonTopStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private let baeminOneButtonBottomStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private let baeminOneButtonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 5
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        backgroundColor = .white
        configureSubView()
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        clipsToBounds = true
        layer.cornerRadius = frame.height / 15
    }
}

extension BaeminOneMenuView {
    
    private func configureSubView() {
        
        [baeminOneMainLabel, baeminOneSubLabel, baeminOneDescriptionLabel].forEach {
            baeminOneLabelStackView.addArrangedSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        [baeminOneSavingDeliveryButton,
         baeminOneCuttletButton,
         baeminOnePizzaButton,
         baeminOneChineseButton,
         baeminOneChickenButton
        ].forEach {
            baeminOneButtonTopStackView.addArrangedSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        [baeminOneBuggerButton,
         baeminOneSnackButton,
         baeminOneDissertButton,
         baeminOnePigFootButton,
         baeminOneAllButton
        ].forEach {
            baeminOneButtonBottomStackView.addArrangedSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
                
        [baeminOneButtonTopStackView, baeminOneButtonBottomStackView].forEach {
            baeminOneButtonStackView.addArrangedSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        [baeminOneHedingStackView, baeminOneButton, baeminOneButtonStackView].forEach {
            addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    private func configureLayout() {
        let safeArea = safeAreaLayoutGuide
        
        baeminOneLabelStackView.setCustomSpacing(5, after: baeminOneSubLabel)
        
        NSLayoutConstraint.activate([
            
            // MARK: baeminOneLabelStackView Constraints
            
            baeminOneHedingStackView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 10),
            baeminOneHedingStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 15),
            
            // MARK: baeminOneButton Constraints
            
            baeminOneButton.heightAnchor.constraint(equalTo: baeminOneMainLabel.heightAnchor),
            baeminOneButton.centerYAnchor.constraint(equalTo: baeminOneLabelStackView.centerYAnchor),
            baeminOneButton.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20),
            
            // MARK: baeminOneButtonStackView Constraints
            
            baeminOneButtonStackView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            baeminOneButtonStackView.topAnchor.constraint(equalTo: baeminOneLabelStackView.bottomAnchor, constant: 5),
            baeminOneButtonStackView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -5),
            baeminOneButtonStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 15),
        ])
    }
}
