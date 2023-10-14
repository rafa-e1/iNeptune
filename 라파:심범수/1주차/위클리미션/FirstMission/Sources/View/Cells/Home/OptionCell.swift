//
//  OptionCell.swift
//  FirstMission
//
//  Created by Rafael on 2023/09/27.
//

import UIKit

import SnapKit

class OptionCell: UICollectionViewCell {
    
    private let optionImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private let homeOption = Option.items
    static let identifier = "OptionCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "OptionCell", bundle: nil)
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
        addSubview(optionImageView)
    }
    
    func configureButtonImage(_ data: Option) {
        optionImageView.image = UIImage(named: data.image)
        
        optionImageView.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top)
            make.bottom.equalTo(contentView.snp.bottom)
            make.leading.equalTo(contentView.snp.leading)
            make.trailing.equalTo(contentView.snp.trailing)
        }
    }

}
