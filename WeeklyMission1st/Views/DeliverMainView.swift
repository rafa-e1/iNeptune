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
        couponAdImageView.clipsToBounds = true
        couponAdImageView.layer.cornerRadius = couponAdImageView.frame.height / 8
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
        [mainSearchBar,
         couponAdImageView
        ].forEach {
            addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    private func configureLayout() {
        let safeArea = safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            // MARK: mainSearchBar Constraints
            mainSearchBar.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.06),
            mainSearchBar.topAnchor.constraint(equalTo: safeArea.topAnchor),
            mainSearchBar.centerXAnchor.constraint(equalTo: centerXAnchor),
            mainSearchBar.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            // MARK: couponAdImageView Constraints
            couponAdImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.08),
            couponAdImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            couponAdImageView.topAnchor.constraint(equalTo: mainSearchBar.bottomAnchor, constant: 10),
            couponAdImageView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 15),
        ])
    }
}
