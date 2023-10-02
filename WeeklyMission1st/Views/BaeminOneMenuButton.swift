//
//  BaeminOneMenuButton.swift
//  WeeklyMission1st
//
//  Created by 제민우 on 2023/09/21.
//

import UIKit

final class BaeminOneMenuButton: UIButton {

    init(buttonImage: String, buttonTitle: String) {
        super.init(frame: .zero)
        
        configureInitialSetting(buttonImage: buttonImage, buttonTitle: buttonTitle)
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        titleLabel?.adjustsFontSizeToFitWidth = true
    }
}

// MARK: Configure Initial Setting

extension BaeminOneMenuButton {
    private func configureInitialSetting(buttonImage: String, buttonTitle: String) {
        
        var container = AttributeContainer()
        container.font = UIFont.systemFont(ofSize: 13)
        
        var config = UIButton.Configuration.plain()
        config.attributedTitle = AttributedString(buttonTitle, attributes: container)
        config.baseForegroundColor = UIColor.black
        config.image = UIImage(named: buttonImage)
        
        config.imagePlacement = .top
        config.imagePadding = 5
        config.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
        configuration = config
        
//        이거 설정 어케함?
//        titleLabel?.adjustsFontSizeToFitWidth = true
    }
}

// MARK: Configure Layout

extension BaeminOneMenuButton {
    
    private func configureLayout() {
        let safeArea = safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            widthAnchor.constraint(equalTo: heightAnchor, multiplier: 0.8),
            topAnchor.constraint(equalTo: safeArea.topAnchor),
            bottomAnchor.constraint(equalTo: safeArea.bottomAnchor),
            leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
        ])
    }
}
