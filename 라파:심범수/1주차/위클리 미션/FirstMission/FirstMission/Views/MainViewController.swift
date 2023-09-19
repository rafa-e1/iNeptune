//
//  MainViewController.swift
//  FirstMission
//
//  Created by Rafael on 2023/09/17.
//

import UIKit

@available(iOS 15.0, *)
class MainViewController: UIViewController {
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        return scrollView
    }()
    
    private lazy var contentView: UIView = {
        let contentView = UIView()
        contentView.backgroundColor = #colorLiteral(red: 0.9520556331, green: 0.9570274949, blue: 0.9655476213, alpha: 1)
        return contentView
    }()
    
    private lazy var topView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.1647058824, green: 0.7568776608, blue: 0.737246573, alpha: 1)
        view.clipsToBounds = true
        view.layer.cornerRadius = 20
        view.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        return view
    }()
    
    private lazy var addressButton: UIButton = {
        var configuration = UIButton.Configuration.plain()
        configuration.image = UIImage(systemName: "arrowtriangle.down.fill")
        configuration.imagePadding = 5
        configuration.preferredSymbolConfigurationForImage = .init(scale: .small)
        configuration.baseForegroundColor = .white
        
        let title = "우리집"
        
        let button = UIButton(configuration: configuration)
        button.semanticContentAttribute = .forceRightToLeft
        button.setAttributedTitle(
            NSAttributedString(
                string: title,
                attributes: [
                    .font: UIFont.systemFont(ofSize: 19, weight: .bold)
                ]
            ),
            for: .normal
        )
        return button
    }()
    
    private lazy var gridButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(systemName: "square.grid.2x2"), for: .normal)
        button.setPreferredSymbolConfiguration(.init(pointSize: 20, weight: .bold), forImageIn: .normal)
        button.imageView?.tintColor = .white
        return button
    }()
    
    private lazy var bellButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(systemName: "bell"), for: .normal)
        button.setPreferredSymbolConfiguration(.init(pointSize: 20, weight: .bold), forImageIn: .normal)
        button.imageView?.tintColor = .white
        return button
    }()
    
    private lazy var cartButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(systemName: "cart"), for: .normal)
        button.setPreferredSymbolConfiguration(.init(pointSize: 20, weight: .bold), forImageIn: .normal)
        button.imageView?.tintColor = .white
        return button
    }()
    
    private lazy var topButtons: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [gridButton, bellButton, cartButton])
        stackView.axis = .horizontal
        stackView.spacing = 13.0
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private lazy var searchBarButton: UIButton = {
        var configuration = UIButton.Configuration.plain()
        configuration.image = UIImage(systemName: "magnifyingglass")?.withTintColor(UIColor(red: 94/255, green: 190/255, blue: 187/255, alpha: 1.0), renderingMode: .alwaysOriginal)
        configuration.imagePadding = 8
        configuration.preferredSymbolConfigurationForImage = .init(scale: .medium)
        configuration.baseForegroundColor = .gray
        let title = "찾는 맛집 이름이 뭐예요?"
        let button = UIButton(configuration: configuration)
        
        button.contentHorizontalAlignment = .left
        button.setAttributedTitle(
            NSAttributedString(
                string: title,
                attributes: [
                    .font: UIFont.systemFont(ofSize: 16.0, weight: .medium)
                ]
            ),
            for: .normal
        )
        
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.layer.cornerRadius = 3
        button.clipsToBounds = true
        
        button.layer.masksToBounds = false
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.5
        button.layer.shadowOffset = CGSize(width: 0, height: 1)
        button.layer.shadowRadius = 1
        
        button.addTarget(self, action: #selector(searchBarButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var couponButton: UIButton = {
        let button = UIButton(type: .custom)
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.backgroundColor = .white
        button.adjustsImageWhenHighlighted = false
        button.setImage(UIImage(named: "coupon"), for: .normal)
        button.addTarget(self, action: #selector(couponButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var cheapDeliveryButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        button.adjustsImageWhenHighlighted = false
        button.setImage(UIImage(named: "cheap"), for: .normal)
        button.addTarget(self, action: #selector(cheapDeliveryButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var deliveryButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        button.adjustsImageWhenHighlighted = false
        button.setImage(UIImage(named: "delivery"), for: .normal)
        button.addTarget(self, action: #selector(deliveryButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var storeButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        button.adjustsImageWhenHighlighted = false
        button.setImage(UIImage(named: "store"), for: .normal)
        button.addTarget(self, action: #selector(storeButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var deliveryCategoryButtons: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [cheapDeliveryButton, deliveryButton, storeButton])
        stackView.axis = .horizontal
        stackView.spacing = 10.0
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private lazy var categoryButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        button.adjustsImageWhenHighlighted = false
        button.setImage(UIImage(named: "category"), for: .normal)
        button.addTarget(self, action: #selector(categoryButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var bannerButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "banner1"), for: .normal)
        button.adjustsImageWhenHighlighted = false
        button.addTarget(self, action: #selector(bannerButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.layer.borderWidth = 1
        return view
    }()
    
    private lazy var separatorImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "separator")
        return imageView
    }()
    
    private lazy var secondCateImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "secondCate")
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    @objc func searchBarButtonTapped() {
        print("Search bar button did tapped")
    }
    
    @objc func couponButtonTapped() {
        print("Coupon button did tapped")
    }
    
    @objc func cheapDeliveryButtonTapped() {
        print("Cheap Delivery button did tapped")
    }
    
    @objc func deliveryButtonTapped() {
        print("Delivery button did tapped")
    }
    
    @objc func storeButtonTapped() {
        print("Store button did tapped")
    }
    
    @objc func bannerButtonTapped() {
        print("Banner button did tapped")
    }
    
    @objc func categoryButtonTapped() {
        print("Category button did tapped")
    }
    
    @objc func packagingButtonTapped() {
        print("Packaging button did tapped")
    }
    
    @objc func delicacyButtonTapped() {
        print("Delicacy button did tapped")
    }
    
    @objc func giftButtonTapped() {
        print("Gift button did tapped")
    }
    
    private func configureUI() {
        view.backgroundColor = #colorLiteral(red: 0.952940166, green: 0.9568629861, blue: 0.9647054076, alpha: 1)
        view.addSubview(scrollView)
        
        scrollView.addSubview(contentView)
        contentView.addSubview(topView)
        contentView.addSubview(addressButton)
        contentView.addSubview(topButtons)
        contentView.addSubview(searchBarButton)
        contentView.addSubview(couponButton)
        contentView.addSubview(deliveryCategoryButtons)
        contentView.addSubview(categoryButton)
        contentView.addSubview(bannerButton)
        contentView.addSubview(separatorView)
        contentView.addSubview(separatorImageView)
        contentView.addSubview(secondCateImageView)
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        topView.translatesAutoresizingMaskIntoConstraints = false
        addressButton.translatesAutoresizingMaskIntoConstraints = false
        topButtons.translatesAutoresizingMaskIntoConstraints = false
        searchBarButton.translatesAutoresizingMaskIntoConstraints = false
        couponButton.translatesAutoresizingMaskIntoConstraints = false
        deliveryCategoryButtons.translatesAutoresizingMaskIntoConstraints = false
        categoryButton.translatesAutoresizingMaskIntoConstraints = false
        bannerButton.translatesAutoresizingMaskIntoConstraints = false
        separatorView.translatesAutoresizingMaskIntoConstraints = false
        separatorImageView.translatesAutoresizingMaskIntoConstraints = false
        secondCateImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            topView.topAnchor.constraint(equalTo: contentView.topAnchor),
            topView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            addressButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            addressButton.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 10),
            
            topButtons.centerYAnchor.constraint(equalTo: addressButton.centerYAnchor),
            topButtons.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -20),
            
            searchBarButton.topAnchor.constraint(equalTo: addressButton.bottomAnchor, constant: 5),
            searchBarButton.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 15),
            searchBarButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            searchBarButton.bottomAnchor.constraint(equalTo: topView.bottomAnchor, constant: -15),
            searchBarButton.heightAnchor.constraint(equalToConstant: 45),
            
            couponButton.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 10),
            couponButton.leadingAnchor.constraint(equalTo: searchBarButton.leadingAnchor),
            couponButton.centerXAnchor.constraint(equalTo: searchBarButton.centerXAnchor),
            couponButton.heightAnchor.constraint(equalToConstant: 80),
            
            deliveryCategoryButtons.topAnchor.constraint(equalTo: couponButton.bottomAnchor, constant: 10),
            deliveryCategoryButtons.leadingAnchor.constraint(equalTo: couponButton.leadingAnchor),
            deliveryCategoryButtons.centerXAnchor.constraint(equalTo: couponButton.centerXAnchor),
            deliveryCategoryButtons.heightAnchor.constraint(equalToConstant: 110),
            
            categoryButton.topAnchor.constraint(equalTo: deliveryCategoryButtons.bottomAnchor, constant: 10),
            categoryButton.leadingAnchor.constraint(equalTo: deliveryCategoryButtons.leadingAnchor),
            categoryButton.centerXAnchor.constraint(equalTo: deliveryCategoryButtons.centerXAnchor),
            categoryButton.heightAnchor.constraint(equalToConstant: 200),
            
            bannerButton.topAnchor.constraint(equalTo: categoryButton.bottomAnchor, constant: 10),
            bannerButton.leadingAnchor.constraint(equalTo: categoryButton.leadingAnchor),
            bannerButton.centerXAnchor.constraint(equalTo: categoryButton.centerXAnchor),
            bannerButton.heightAnchor.constraint(equalToConstant: 120),
            
            separatorImageView.topAnchor.constraint(equalTo: bannerButton.bottomAnchor, constant: 10),
            separatorImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            separatorImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            separatorImageView.heightAnchor.constraint(equalToConstant: 10),
            
            secondCateImageView.topAnchor.constraint(equalTo: separatorView.topAnchor, constant: 10),
            secondCateImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            secondCateImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            secondCateImageView.bottomAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: -10),
            
            separatorView.topAnchor.constraint(equalTo: separatorImageView.topAnchor, constant: 5),
            separatorView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            separatorView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            separatorView.heightAnchor.constraint(equalToConstant: 120),
            separatorView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
        ])
        
        scrollView.contentSize = contentView.frame.size
    }
    
}
