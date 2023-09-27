//
//  CouponCell.swift
//  FirstMission
//
//  Created by Rafael on 2023/09/27.
//

import UIKit

import SnapKit

class CouponCell: UICollectionViewCell {
    
    private let couponImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private let homeCoupon = Coupon.items
    static let identifier = "CouponCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "CouponCell", bundle: nil)
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
        addSubview(couponImageView)
    }
    
    func configureButtonImage(_ data: Coupon) {
        couponImageView.image = UIImage(named: data.image)
        
        couponImageView.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top)
            make.bottom.equalTo(contentView.snp.bottom)
            make.leading.equalTo(contentView.snp.leading)
            make.trailing.equalTo(contentView.snp.trailing)
        }
    }

}
