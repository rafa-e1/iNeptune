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
        searchBar.barTintColor = #colorLiteral(red: 0.2200241983, green: 0.8307676315, blue: 0.8380222917, alpha: 1)
        return searchBar
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
    
    private let baeminOneContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    private let baeminOneMainLabel: UILabel = {
        let label = UILabel()
        label.text = "알뜰∙한집배달"
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
        let button = UIButton(type: .custom)
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.tintColor = .black
        return button
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
    
    private let containerStackView: UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.alignment = .center
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    private let bannerADImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(named: "AD")
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .white
        return imageView
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
        
        couponADImageView.clipsToBounds = true
        couponADImageView.layer.cornerRadius = couponADImageView.frame.height / 8

        categoryButtonStackView.heightAnchor.constraint(equalToConstant: categoryButtonHeight).isActive = true
        
        baeminOneContainerView.clipsToBounds = true
        baeminOneContainerView.layer.cornerRadius = baeminOneContainerView.frame.height / 15
        
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
         baeminOneContainerView,
         bannerADImageView
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
        
        [baeminOneLabelStackView, baeminOneButton, baeminOneButtonStackView].forEach {
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
            
            couponADImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.08),
            couponADImageView.centerXAnchor.constraint(equalTo: containerStackView.centerXAnchor),
            couponADImageView.topAnchor.constraint(equalTo: containerStackView.topAnchor),
            couponADImageView.leadingAnchor.constraint(equalTo: containerStackView.leadingAnchor),
            
            // MARK: categoryButtonStackView Constraints
            
            categoryButtonStackView.centerXAnchor.constraint(equalTo: containerStackView.centerXAnchor),
            categoryButtonStackView.leadingAnchor.constraint(equalTo: containerStackView.leadingAnchor),
            
            // MARK: baeminOneLabelStackView Constraints
            
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
            
            // MARK: baeminOneButtonStackView Constraints
            
            baeminOneButtonStackView.centerXAnchor.constraint(equalTo: baeminOneContainerView.centerXAnchor),
            baeminOneButtonStackView.topAnchor.constraint(equalTo: baeminOneLabelStackView.bottomAnchor),
            baeminOneButtonStackView.bottomAnchor.constraint(equalTo: baeminOneContainerView.bottomAnchor, constant: -5),
            baeminOneButtonStackView.leadingAnchor.constraint(equalTo: baeminOneContainerView.leadingAnchor, constant: 15),
            
            // MARK: baeminOneContainerView Constraints
            
            baeminOneContainerView.centerXAnchor.constraint(equalTo: centerXAnchor),
            baeminOneContainerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.25),
            baeminOneContainerView.leadingAnchor.constraint(equalTo: containerStackView.leadingAnchor),
            
            // MARK: bannerADImageView Constraints
            
            bannerADImageView.centerXAnchor.constraint(equalTo: containerStackView.centerXAnchor),
            bannerADImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.15),
            bannerADImageView.leadingAnchor.constraint(equalTo: containerStackView.leadingAnchor),
        ])
    }
}
