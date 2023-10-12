//
//  ProductOptionHeaderView.swift
//  3주차 위클리미션
//
//  Created by 제민우 on 2023/10/11.
//

import UIKit

final class ProductTitleHeaderView: UIView {
    
    var productTitleHeaderContentHeight: CGFloat { labelStackView.bounds.height }
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.text = "순살 고추마요"
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 0
        label.text = "100% 국내산 통다리살로 즐기는 고소한 마요네즈와 매콤한 청고추의 조화로 탄생한 No.1 마요 치킨"
        return label
    }()
    
    private lazy var labelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, descriptionLabel])
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.alignment = .fill
        stackView.distribution = .fill
        return stackView
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

extension ProductTitleHeaderView {
    private func configureSubviews() {
        [labelStackView].forEach {
            addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    private func configureLayout() {
        let safeArea = self.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            labelStackView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            labelStackView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 15),
            labelStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 15),
            labelStackView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -10)
//            // MARK: titleLabel Constraints
//            titleLabel.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
//            titleLabel.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 15),
//            titleLabel.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 15),
//            
//            // MARK: descriptionLabel Constraints
//            descriptionLabel.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
//            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
//            descriptionLabel.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 15),
        ])
    }
}
