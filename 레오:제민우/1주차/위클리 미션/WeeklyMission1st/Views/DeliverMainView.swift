//
//  DeliverMainView.swift
//  WeeklyMission1st
//
//  Created by 제민우 on 2023/09/20.
//

import UIKit

final class DeliverMainView: UIScrollView {

    lazy var mainSearchButton: UIButton = {
        var container = AttributeContainer()
        container.font = UIFont.systemFont(ofSize: 14)
        
        var config = UIButton.Configuration.filled()
        config.attributedTitle = AttributedString("찾는 맛집 이름이 뭐에요?", attributes: container)
        config.baseForegroundColor = UIColor.systemGray5
        config.baseBackgroundColor = UIColor.white
        config.image = UIImage(systemName: "magnifyingglass")
        config.imagePlacement = .leading
        config.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 0)
        
        
        let button = UIButton(configuration: config)
        return button
    }()
    
    private lazy var mainSearchButtonBackgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0, green: 0.9895611405, blue: 1, alpha: 1)
        view.addSubview(mainSearchButton)
        return view
    }()

    private let couponADImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(named: "AD")
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
    
    let categoryDeliverButton: UIButton = MainCategoryButton(buttonImage: "CategoryDelivery")
    let categoryBMartButton: UIButton = MainCategoryButton(buttonImage: "CategoryBMart")
    let categoryStoreButton: UIButton = MainCategoryButton(buttonImage: "CategorySale")
    
    private let categoryButtonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private let baeminOneMenuView = BaeminOneMenuView()
    
    private let bannerADImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(named: "AD")
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .white
        return imageView
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
        
        mainSearchButtonBackgroundView.clipsToBounds = true
        mainSearchButtonBackgroundView.layer.cornerRadius = mainSearchButtonBackgroundView.frame.height / 6
        
        // 30: stackViewLeading/trailingAnchorConstant, 20: stackViewSpacing
        let categoryButtonHeight = CGFloat((viewWidth - 30 - 20) / 3)
        
        couponADImageView.clipsToBounds = true
        couponADImageView.layer.cornerRadius = couponADImageView.frame.height / 8

        categoryButtonStackView.heightAnchor.constraint(equalToConstant: categoryButtonHeight).isActive = true
        
        bannerADImageView.clipsToBounds = true
        bannerADImageView.layer.cornerRadius = bannerADImageView.frame.height / 10
    }
}

// MARK: Configure Initial Setting

extension DeliverMainView {
    private func configureInitialSetting() {
        backgroundColor = .systemGray6
    }
}

// MARK: Configure Layout

extension DeliverMainView {
    private func configureSubviews() {
        
        [couponADImageView,
         categoryButtonStackView,
         baeminOneMenuView,
         bannerADImageView
        ].forEach {
            containerStackView.addArrangedSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        [categoryDeliverButton, categoryBMartButton, categoryStoreButton].forEach {
            categoryButtonStackView.addArrangedSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        [mainSearchButton,
         containerStackView
        ].forEach {
            addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    private func configureLayout() {
        let safeArea = safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            
            // MARK: mainSearchBar Constraints
            
            mainSearchButton.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.06),
            mainSearchButton.topAnchor.constraint(equalTo: safeArea.topAnchor),
            mainSearchButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            mainSearchButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            // MARK: Container StackView Constraints
            
            containerStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            containerStackView.topAnchor.constraint(equalTo: mainSearchButton.bottomAnchor, constant: 10),
            containerStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 15),
            
            // MARK: couponAdImageView Constraints
            
            couponADImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.08),
            couponADImageView.centerXAnchor.constraint(equalTo: containerStackView.centerXAnchor),
            couponADImageView.topAnchor.constraint(equalTo: containerStackView.topAnchor),
            couponADImageView.leadingAnchor.constraint(equalTo: containerStackView.leadingAnchor),
            
            // MARK: categoryButtonStackView Constraints
            
            categoryButtonStackView.centerXAnchor.constraint(equalTo: containerStackView.centerXAnchor),
            categoryButtonStackView.leadingAnchor.constraint(equalTo: containerStackView.leadingAnchor),
            
            // MARK: baeminOneContainerView Constraints
            
            baeminOneMenuView.centerXAnchor.constraint(equalTo: centerXAnchor),
            baeminOneMenuView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.28),
            baeminOneMenuView.leadingAnchor.constraint(equalTo: containerStackView.leadingAnchor),
            
            // MARK: bannerADImageView Constraints
            
            bannerADImageView.centerXAnchor.constraint(equalTo: containerStackView.centerXAnchor),
            bannerADImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.15),
            bannerADImageView.leadingAnchor.constraint(equalTo: containerStackView.leadingAnchor),
        ])
    }
}
