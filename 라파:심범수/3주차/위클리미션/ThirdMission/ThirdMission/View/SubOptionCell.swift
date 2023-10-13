//
//  SubOptionCell.swift
//  ThirdMission
//
//  Created by Rafael on 10/10/23.
//

import UIKit

class SubOptionCell: UITableViewCell {
    
    static let cellID = "SubOptionCell"
    
    weak var delegate: SubOptionCellDelegate?
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20.0, weight: .semibold)
        label.textColor = .black
        return label
    }()
    
    private lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15.0, weight: .light)
        label.textColor = .systemGray
        return label
    }()
    
    private lazy var categoryLabel: PaddingLabel = {
        let label = PaddingLabel(padding: UIEdgeInsets(top: 0.0, left: 10.0, bottom: 0.0, right: 10.0))
        label.font = UIFont.systemFont(ofSize: 12.0, weight: .medium)
        label.textColor = .gray
        label.backgroundColor = #colorLiteral(red: 0.9529394507, green: 0.9607848525, blue: 0.9686267972, alpha: 1)
        label.clipsToBounds = true
        label.layer.cornerRadius = 10
        return label
    }()
    
    lazy var checkBoxButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(systemName: "square"), for: .normal)
        button.setImage(UIImage(systemName: "square.fill"), for: .selected)
        button.addTarget(self, action: #selector(checkBoxButtonDidTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var menuLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17.0, weight: .medium)
        label.textColor = .black
        return label
    }()
    
    private lazy var buttonAndMenuStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [checkBoxButton, menuLabel])
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 10
        return stackView
    }()
    
    private lazy var priceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17.0, weight: .medium)
        label.textColor = .black
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(titleLabel)
        contentView.addSubview(categoryLabel)
        contentView.addSubview(subtitleLabel)
        contentView.addSubview(buttonAndMenuStackView)
        contentView.addSubview(priceLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        categoryLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        buttonAndMenuStackView.translatesAutoresizingMaskIntoConstraints = false
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            
            categoryLabel.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            categoryLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            categoryLabel.heightAnchor.constraint(equalToConstant: 25),
            
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            subtitleLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            
            buttonAndMenuStackView.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 20),
            buttonAndMenuStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -60),
            buttonAndMenuStackView.leadingAnchor.constraint(equalTo: subtitleLabel.leadingAnchor),
            buttonAndMenuStackView.heightAnchor.constraint(equalToConstant: 40),
            
            priceLabel.centerYAnchor.constraint(equalTo: buttonAndMenuStackView.centerYAnchor),
            priceLabel.trailingAnchor.constraint(equalTo: categoryLabel.trailingAnchor)
        ])
    }
    
    override func layoutSubviews() {
      super.layoutSubviews()
      contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(data: SettingItem) {
        titleLabel.text = data.title
        categoryLabel.text = data.category
        subtitleLabel.text = data.subtitle
        menuLabel.text = data.firstSubOption
        
        if let price = data.firstSubOptionPrice {
            priceLabel.text = "\(price)원"
        } else {
            priceLabel.text = nil
        }
    }
    
    @objc private func checkBoxButtonDidTapped(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        delegate?.didToggleCheckBoxInCell(self)
    }

}
