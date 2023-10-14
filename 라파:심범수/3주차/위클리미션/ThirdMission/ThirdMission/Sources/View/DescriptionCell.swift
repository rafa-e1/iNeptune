//
//  DescriptionCell.swift
//  ThirdMission
//
//  Created by Rafael on 10/10/23.
//

import UIKit

class DescriptionCell: UITableViewCell {
    
    static let cellID = "DescriptionCell"
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 30.0, weight: .semibold)
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17.0, weight: .light)
        label.textColor = .systemGray
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var detailButton: UIButton = {
        var configuration = UIButton.Configuration.plain()
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
        
        let button = UIButton(configuration: configuration)
        button.setAttributedTitle(NSAttributedString(string: "영양성분 및 알레르기성분 표시 보기", attributes: [.font: UIFont.systemFont(ofSize: 12.0, weight: .medium), .foregroundColor: UIColor.black]), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.9479561237, green: 0.9479561237, blue: 0.9479561237, alpha: 1)
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(detailButtonDidTapped), for: .touchUpInside)
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(titleLabel)
        contentView.addSubview(subtitleLabel)
        contentView.addSubview(detailButton)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        detailButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 15),
            subtitleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            subtitleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            
            detailButton.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 10),
            detailButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
            detailButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            detailButton.trailingAnchor.constraint(lessThanOrEqualTo: contentView.trailingAnchor, constant: -15),
            detailButton.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(data: SettingItem) {
        titleLabel.text = data.title
        subtitleLabel.text = data.category
    }
    
    @objc func detailButtonDidTapped() {
        print("영양성분 및 알레르기성분 표시 보기 버튼이 눌러짐")
    }
    
}
