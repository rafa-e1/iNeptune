//
//  OrderedListViewController.swift
//  FirstMission
//
//  Created by Rafael on 2023/09/24.
//

import UIKit

import SnapKit

class OrderedListViewController: UIViewController {

    private lazy var mainLabel: UILabel = {
        let label = UILabel()
        label.text = "주문내역"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(mainLabel)
        
        mainLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }

}
