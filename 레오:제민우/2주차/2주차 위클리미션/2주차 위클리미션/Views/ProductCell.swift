//
//  ProductTableViewCell.swift
//  2주차 위클리미션
//
//  Created by 제민우 on 2023/10/04.
//

import UIKit

final class ProductCell: UITableViewCell {

    let productImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let productTitle: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    let productDescription: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .systemGray3
        return label
    }()
    
    let productPrice: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)

        return label
    }()
    
    private let productLabelStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .leading
        stackView.spacing = 5
        return stackView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        configureSubViews()
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: Configure Layout

extension ProductCell {
    private func configureSubViews() {
        [productTitle, productDescription, productPrice].forEach {
            productLabelStackView.addArrangedSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        [productImage, productLabelStackView].forEach {
            self.contentView.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    private func configureLayout() {
        let contentView = self.contentView
        
        NSLayoutConstraint.activate([
            // MARK: ProductImage Constraints
            productImage.heightAnchor.constraint(equalTo: productImage.widthAnchor),
            productImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            productImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            productImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            
            // MARK: ProductLabelStackView Constraints
            productLabelStackView.topAnchor.constraint(equalTo: productImage.topAnchor),
            productLabelStackView.leadingAnchor.constraint(equalTo: productImage.trailingAnchor, constant: 15),
            productLabelStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15)
        ])
    }
}
