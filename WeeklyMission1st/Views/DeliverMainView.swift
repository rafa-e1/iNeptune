//
//  DeliverMainView.swift
//  WeeklyMission1st
//
//  Created by 제민우 on 2023/09/20.
//

import UIKit

final class DeliverMainView: UIView {
    
    private let mainSearchBar: UISearchBar = {
       let searchBar = UISearchBar()
        searchBar.placeholder = "젤라또 나와라 뚝딱"        // 데이터 받아올 수 있다면?
        return searchBar
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        configureSubviews()
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: Configure Layout
extension DeliverMainView {
    private func configureSubviews() {
        [mainSearchBar].forEach {
            addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    private func configureLayout() {
        let safeArea = safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            // MARK: mainSearchBar Constraints
            mainSearchBar.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.08),
            mainSearchBar.topAnchor.constraint(equalTo: safeArea.topAnchor),
            mainSearchBar.centerXAnchor.constraint(equalTo: centerXAnchor),
            mainSearchBar.leadingAnchor.constraint(equalTo: leadingAnchor),
            
        ])
    }
}
