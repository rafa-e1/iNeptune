//
//  BottomButtonView.swift
//  3주차 위클리미션
//
//  Created by 제민우 on 2023/10/12.
//

import UIKit

final class AddCartButton: UIView {

    var addCartButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0, green: 0.7436546683, blue: 0.5554187894, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        button.setTitle("0원 담기", for: .normal)
        button.tintColor = .white
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        backgroundColor = .white
        configureSubviews()
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension AddCartButton {
    private func configureSubviews() {
        addSubview(addCartButton)
        addCartButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func configureLayout() {
        NSLayoutConstraint.activate([
            addCartButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            addCartButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            addCartButton.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            addCartButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
        ])
    }
}
