//
//  PriceHeaderView.swift
//  3주차 위클리미션
//
//  Created by 제민우 on 2023/10/12.
//

import UIKit

final class OptionHeaderView: UIView {
    
    var productTitleHeaderContentHeight: CGFloat { optionTitleLabel.bounds.height }
    
    let optionTitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    private let priceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return label
    }()

    init(optionTitle: String, price: String) {
        super.init(frame: .zero)
        backgroundColor = .white
        optionTitleLabel.text = optionTitle
        priceLabel.text = price
        configureSubviews()
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension OptionHeaderView {
    private func configureSubviews() {
        [optionTitleLabel, priceLabel].forEach {
            addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    private func configureLayout() {
        let safeArea = self.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
    
            // MARK: priceInfoLabel Constraints
//            priceInfoLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 15),
            optionTitleLabel.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -10),
            optionTitleLabel.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 15),
            
            // MARK: priceLabel Constraints
//            priceLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 15),
            priceLabel.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -10),
            priceLabel.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -15),
        ])
    }
}
