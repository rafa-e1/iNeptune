//
//  DeliverMainView.swift
//  WeeklyMission1st
//
//  Created by 제민우 on 2023/09/20.
//

import UIKit

final class DeliverMainView: UIScrollView {
    
    private let mainSearchBar: UISearchBar = {
       let searchBar = UISearchBar()
        searchBar.placeholder = "젤라또 나와라 뚝딱"        // 데이터 받아올 수 있다면?
        return searchBar
    }()
    
    private let couponAdImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .white
        
//        let gradient = UIImage.gradientImage(bounds: imageView.bounds, colors: [#colorLiteral(red: 0, green: 0.9895611405, blue: 1, alpha: 1), #colorLiteral(red: 0, green: 0.0002393734758, blue: 0.976762116, alpha: 1)])
//        let gradientColor = UIColor(patternImage: gradient)
//        
//        imageView.layer.borderColor = gradientColor.cgColor
//        imageView.layer.borderWidth = 1
        
        // 다른방법
//        let gradient = CAGradientLayer()
//        gradient.frame = CGRect(origin: CGPointZero, size: imageView.frame.size)
//        gradient.colors = [#colorLiteral(red: 0, green: 0.9895611405, blue: 1, alpha: 1), #colorLiteral(red: 0, green: 0.0002393734758, blue: 0.976762116, alpha: 1)]
//
//        let shape = CAShapeLayer()
//        shape.lineWidth = 1
//        shape.path = UIBezierPath(rect: imageView.bounds).cgPath
//        shape.strokeColor = UIColor.black.cgColor
//        shape.fillColor = UIColor.clear.cgColor
//        gradient.mask = shape
//
//        imageView.layer.addSublayer(gradient)
        
        return imageView
    }()
    
    private let categoryDeliverButton = MainCategoryButton(buttonImage: "CategoryDeliverButton")
    private let categoryBMartButton = MainCategoryButton(buttonImage: "CategoryBMardButton")
    private let categoryStoreButton = MainCategoryButton(buttonImage: "CategoryStoreButton")
    
    private let categoryButtonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private let baeminOneContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    private let baeminOneMainLabel: UILabel = {
        let label = UILabel()
        label.text = "알뜰-한집배달"
        label.font = UIFont(name: "BMHANNAProOTF", size: 20)
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()
    
    private let baeminOneSubLabel: UILabel = {
        let label = UILabel()
        label.text = "배민1"
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()
    
    private let baeminOneDescriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "원하는 대로 골라 주문!"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .center
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
        let button = UIButton()
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.tintColor = .black
        return button
    }()
    
    private let containerStackView: UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.alignment = .center
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        configureInitialSetting()
        configureSubviews()
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let viewWidth = Int(self.frame.width)
        
        // 30: stackViewLeading/trailingAnchorConstant, 20: stackViewSpacing
        let categoryButtonHeight = CGFloat((viewWidth - 30 - 20) / 3)
        
        couponAdImageView.clipsToBounds = true
        couponAdImageView.layer.cornerRadius = couponAdImageView.frame.height / 8

        categoryButtonStackView.heightAnchor.constraint(equalToConstant: categoryButtonHeight).isActive = true
        
        baeminOneContainerView.clipsToBounds = true
        baeminOneContainerView.layer.cornerRadius = baeminOneContainerView.frame.height / 15
    }
}

// MARK: Configure Initial Setting
extension DeliverMainView {
    private func configureInitialSetting() {
        backgroundColor = .systemGray2
    }
}

// MARK: Configure Layout
extension DeliverMainView {
    private func configureSubviews() {
        
        [couponAdImageView,
         categoryButtonStackView,
         baeminOneContainerView,
         
        ].forEach {
            containerStackView.addArrangedSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        [categoryDeliverButton, categoryBMartButton, categoryStoreButton].forEach {
            categoryButtonStackView.addArrangedSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        [baeminOneMainLabel, baeminOneSubLabel, baeminOneDescriptionLabel].forEach {
            baeminOneLabelStackView.addArrangedSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        [baeminOneLabelStackView, baeminOneButton].forEach {
            baeminOneContainerView.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        [mainSearchBar,
         containerStackView
        ].forEach {
            addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    private func configureLayout() {
        let safeArea = safeAreaLayoutGuide
        
        baeminOneLabelStackView.setCustomSpacing(5, after: baeminOneSubLabel)
        NSLayoutConstraint.activate([
            // MARK: mainSearchBar Constraints
            mainSearchBar.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.06),
            mainSearchBar.topAnchor.constraint(equalTo: safeArea.topAnchor),
            mainSearchBar.centerXAnchor.constraint(equalTo: centerXAnchor),
            mainSearchBar.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            // MARK: Container StackView Constraints
            containerStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            containerStackView.topAnchor.constraint(equalTo: mainSearchBar.bottomAnchor, constant: 10),
            containerStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 15),
            
            // MARK: couponAdImageView Constraints
            couponAdImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.08),
            couponAdImageView.centerXAnchor.constraint(equalTo: containerStackView.centerXAnchor),
            couponAdImageView.topAnchor.constraint(equalTo: containerStackView.topAnchor),
            couponAdImageView.leadingAnchor.constraint(equalTo: containerStackView.leadingAnchor),
            
            // MARK: categoryButtonStackView Constraints
            categoryButtonStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            categoryButtonStackView.leadingAnchor.constraint(equalTo: containerStackView.leadingAnchor),
            
            // MARK: savingOrOnlyDeliveryContainerView Constraints
            baeminOneContainerView.centerXAnchor.constraint(equalTo: centerXAnchor),
            baeminOneContainerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.25),
            baeminOneContainerView.leadingAnchor.constraint(equalTo: containerStackView.leadingAnchor),
            
            // MARK: savingOrOnlyDeliveryLabel Constraints
            baeminOneLabelStackView
                .topAnchor.constraint(
                equalTo: baeminOneContainerView.topAnchor,
                constant: 15
            ),
            baeminOneLabelStackView.leadingAnchor.constraint(
                equalTo: baeminOneContainerView.leadingAnchor,
                constant: 15
            ),
            baeminOneLabelStackView.trailingAnchor.constraint(
                equalTo: baeminOneContainerView.trailingAnchor,
                constant: -80
            ),
            
            // MARK: baeminOneButton Constraints
            baeminOneButton.centerYAnchor.constraint(equalTo: baeminOneLabelStackView.centerYAnchor),
            baeminOneButton.trailingAnchor.constraint(
                equalTo: baeminOneContainerView.trailingAnchor,
                constant: -20
            ),
        ])
    }
}
