//
//  SearchViewCell.swift
//  FirstMission
//
//  Created by Rafael on 2023/09/25.
//

import UIKit

class SearchViewCell: UICollectionViewCell {
    
    private lazy var searchBarButton: UIButton = {
        var configuration = UIButton.Configuration.plain()
        configuration.image = UIImage(
            systemName: "magnifyingglass"
        )?.withTintColor(
            UIColor(
                red: 94/255,
                green: 190/255,
                blue: 187/255,
                alpha: 1.0
            ), renderingMode: .alwaysOriginal
        )
        configuration.imagePadding = 8
        configuration.preferredSymbolConfigurationForImage = .init(scale: .medium)
        configuration.baseForegroundColor = .gray
        let title = "찾는 맛집 이름이 뭐예요?"
        let button = UIButton(configuration: configuration)
        
        button.contentHorizontalAlignment = .left
        button.setAttributedTitle(
            NSAttributedString(
                string: title,
                attributes: [
                    .font: UIFont.systemFont(ofSize: 16.0, weight: .medium)
                ]
            ),
            for: .normal
        )
        
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.layer.cornerRadius = 3
        button.clipsToBounds = true
        
        button.layer.masksToBounds = false
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.5
        button.layer.shadowOffset = CGSize(width: 0, height: 1)
        button.layer.shadowRadius = 1
        
        button.addTarget(self, action: #selector(searchBarButtonTapped), for: .touchUpInside)
        return button
    }()
    
    @objc func searchBarButtonTapped() {
        print("Search bar button did tapped")
    }

    static let identifier = "SearchViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "SearchViewCell", bundle: nil)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = #colorLiteral(red: 0.16434443, green: 0.7568776608, blue: 0.737246573, alpha: 1)
        addSubview(searchBarButton)
        
        searchBarButton.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(
                UIEdgeInsets(
                    top: 15,
                    left: 15,
                    bottom: 15,
                    right: 15
                )
            )
        }
    }

}
