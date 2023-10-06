//
//  PostFloatingButton.swift
//  2주차 위클리미션
//
//  Created by 제민우 on 2023/10/05.
//

import UIKit

final class PostFloatingButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        configureLayout()
        self.imageView?.contentMode = .scaleAspectFit
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.height / 2
    }
}

extension PostFloatingButton {
    
    func configureCircleFloatingButton() -> UIButton.Configuration {
        var config = UIButton.Configuration.plain()
        config.cornerStyle = .dynamic
        config.image = UIImage(systemName: "plus")
        config.baseForegroundColor = .white
        backgroundColor = .orange

        return config
    }
    
    func configureCapsuleFloatingButton() -> UIButton.Configuration {
        var container = AttributeContainer()
        container.font = UIFont.systemFont(ofSize: 16, weight: .bold)

        var config = UIButton.Configuration.plain()
        
        config.attributedTitle = AttributedString("글 쓰기", attributes: container)
        config.baseForegroundColor = .white
        
        config.image = UIImage(systemName: "plus")
        backgroundColor = .orange

        return config
    }
    
    private func configureLayout() {
        
        NSLayoutConstraint.activate([
            centerXAnchor.constraint(equalTo: centerXAnchor),
            centerYAnchor.constraint(equalTo: centerYAnchor),
            topAnchor.constraint(equalTo: topAnchor),
            leadingAnchor.constraint(equalTo: leadingAnchor)
        ])
    }
}
