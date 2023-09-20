//
//  MainCategoryButton.swift
//  WeeklyMission1st
//
//  Created by 제민우 on 2023/09/20.
//

import UIKit

final class MainCategoryButton: UIButton {
    
    init(buttonImage: String) {
        super.init(frame: .zero)
        setImage(UIImage(named: buttonImage), for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MainCategoryButton {
    
    private func configureLayout() {
        let safeArea = safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: safeArea.topAnchor),
            bottomAnchor.constraint(equalTo: safeArea.bottomAnchor),
            leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
        ])
    }
}
