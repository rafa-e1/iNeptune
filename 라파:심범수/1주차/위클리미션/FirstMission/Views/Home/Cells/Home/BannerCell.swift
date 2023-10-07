//
//  BannerCell.swift
//  FirstMission
//
//  Created by Rafael on 2023/09/27.
//

import UIKit

import SnapKit

class BannerCell: UICollectionViewCell {
    
    private let bannerImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private let homeBanner = Banner.items
    static let identifier = "BannerCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "BannerCell", bundle: nil)
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
        addSubview(bannerImageView)
    }
    
    func configureButtonImage(_ data: Banner) {
        bannerImageView.image = UIImage(named: data.image)
        
        bannerImageView.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top)
            make.bottom.equalTo(contentView.snp.bottom)
            make.leading.equalTo(contentView.snp.leading)
            make.trailing.equalTo(contentView.snp.trailing)
        }
    }

}
