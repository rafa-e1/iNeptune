//
//  MainOptionCell.swift
//  ThirdMission
//
//  Created by Rafael on 10/10/23.
//

import UIKit

class MainOptionCell: UITableViewCell {
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20.0, weight: .semibold)
        label.textColor = .black
        return label
    }()
    
    private lazy var categoryLabel: PaddingLabel = {
        let label = PaddingLabel(padding: UIEdgeInsets(top: 0.0, left: 10.0, bottom: 0.0, right: 10.0))
        label.font = UIFont.systemFont(ofSize: 12.0, weight: .medium)
        label.textColor = .systemBlue
        label.backgroundColor = #colorLiteral(red: 0.9372480512, green: 0.9686293006, blue: 0.9960761666, alpha: 1)
        label.clipsToBounds = true
        label.layer.cornerRadius = 10
        return label
    }()
    
    lazy var firstRadioButton: UIButton = {
        let button = UIButton(type: .custom)
        button.tag = 0
        button.setImage(UIImage(systemName: "circle.fill"), for: .normal)
        button.addTarget(self, action: #selector(radioButtonDidTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var sizeMLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17.0, weight: .medium)
        label.textColor = .black
        return label
    }()
    
    private lazy var firstStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [firstRadioButton, sizeMLabel])
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 10
        return stackView
    }()
    
    private lazy var priceOfMLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17.0, weight: .medium)
        label.textColor = .black
        return label
    }()
    
    lazy var secondRadioButton: UIButton = {
        let button = UIButton(type: .custom)
        button.tag = 1
        button.setImage(UIImage(systemName: "circle"), for: .normal)
        button.addTarget(self, action: #selector(radioButtonDidTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var sizeLLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17.0, weight: .medium)
        label.textColor = .black
        return label
    }()
    
    private lazy var secondStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [secondRadioButton, sizeLLabel])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 10
        return stackView
    }()
    
    private lazy var priceOfLLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17.0, weight: .medium)
        label.textColor = .black
        return label
    }()
    
    static let cellID = "MainOptionCell"
    
    var secondRadioButtonTapped: (() -> Void)?
    var firstRadioButtonTapped: (() -> Void)?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(titleLabel)
        contentView.addSubview(categoryLabel)
        contentView.addSubview(firstStackView)
        contentView.addSubview(priceOfMLabel)
        contentView.addSubview(secondStackView)
        contentView.addSubview(priceOfLLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        categoryLabel.translatesAutoresizingMaskIntoConstraints = false
        firstStackView.translatesAutoresizingMaskIntoConstraints = false
        priceOfMLabel.translatesAutoresizingMaskIntoConstraints = false
        secondStackView.translatesAutoresizingMaskIntoConstraints = false
        priceOfLLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            
            categoryLabel.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            categoryLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            categoryLabel.heightAnchor.constraint(equalToConstant: 25),
            
            firstStackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            firstStackView.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            firstStackView.heightAnchor.constraint(equalToConstant: 50),
            
            priceOfMLabel.centerYAnchor.constraint(equalTo: firstStackView.centerYAnchor),
            priceOfMLabel.trailingAnchor.constraint(equalTo: categoryLabel.trailingAnchor),
            
            secondStackView.topAnchor.constraint(equalTo: firstStackView.bottomAnchor, constant: 20),
            secondStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
            secondStackView.leadingAnchor.constraint(equalTo: firstStackView.leadingAnchor),
            secondStackView.heightAnchor.constraint(equalToConstant: 50),
            
            priceOfLLabel.centerYAnchor.constraint(equalTo: secondStackView.centerYAnchor),
            priceOfLLabel.trailingAnchor.constraint(equalTo: priceOfMLabel.trailingAnchor),
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
        sizeMLabel.text = data.firstMainOption
        
        if let priceOfM = data.firstMainOptionPrice {
            priceOfMLabel.text = "\(priceOfM)원"
        } else {
            priceOfMLabel.text = nil
        }
        
        sizeLLabel.text = data.secondMainOption
        
        if let priceOfL = data.secondMainOptionPrice {
            priceOfLLabel.text = "\(priceOfL)원"
        } else {
            priceOfLLabel.text = nil
        }
    }
    
    @objc private func radioButtonDidTapped(_ sender: UIButton) {
        let radioButtons: [UIButton] = [firstRadioButton, secondRadioButton]
        radioButtons.forEach {
            if $0.tag == sender.tag {
                $0.setImage(UIImage(systemName: "circle.fill"), for: .normal)
                if sender.tag == 1 {
                    secondRadioButtonTapped?()
                } else if sender.tag == 0 {
                    firstRadioButtonTapped?()
                }
            } else {
                $0.setImage(UIImage(systemName: "circle"), for: .normal)
            }
        }
    }
    
}
