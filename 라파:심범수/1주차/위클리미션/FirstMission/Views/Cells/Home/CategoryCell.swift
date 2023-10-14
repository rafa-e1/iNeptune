//
//  CategoryCell.swift
//  FirstMission
//
//  Created by Rafael on 2023/09/27.
//

import UIKit

import SnapKit

class CategoryCell: UICollectionViewCell {
    
    private let categoryImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private let homecategory = Category.items
    static let identifier = "CategoryCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "CategoryCell", bundle: nil)
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
        addSubview(categoryImageView)
    }
    
    func configureButtonImage(_ data: Category) {
        categoryImageView.image = UIImage(named: data.image)
        
        categoryImageView.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top)
            make.bottom.equalTo(contentView.snp.bottom)
            make.leading.equalTo(contentView.snp.leading)
            make.trailing.equalTo(contentView.snp.trailing)
        }
    }

}
