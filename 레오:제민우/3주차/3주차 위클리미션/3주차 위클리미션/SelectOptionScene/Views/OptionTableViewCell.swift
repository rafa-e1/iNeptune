//
//  OptionTableViewCell.swift
//  3주차 위클리미션
//
//  Created by 제민우 on 2023/10/11.
//

import UIKit

final class OptionTableViewCell: UITableViewCell {

    lazy var selectedButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(systemName: "circle"), for: .normal)
        button.setImage(UIImage(systemName: "circle.inset.filled"), for: .selected)
        button.tintColor = .systemGray3
        button.addTarget(self, action: #selector(didTapSelectButton), for: .touchUpInside)
        return button
    }()
    
    var optionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    var priceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        configureSubviews()
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension OptionTableViewCell {
    private func configureSubviews() {
        [selectedButton, optionLabel, priceLabel].forEach {
            self.contentView.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    private func configureLayout() {
        let contentView = self.contentView
        
        NSLayoutConstraint.activate([
            selectedButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            selectedButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            
            optionLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            optionLabel.leadingAnchor.constraint(equalTo: selectedButton.trailingAnchor, constant: 5),
            
            priceLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            priceLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10)
        ])
    }
}

// MARK: Configure AddTarget

extension OptionTableViewCell {
    @objc private func didTapSelectButton() {
        selectedButton.isSelected.toggle()
        if selectedButton.isSelected == true {
            selectedButton.tintColor = .systemMint
        } else {
            selectedButton.tintColor = .systemGray3
        }
    }
}
