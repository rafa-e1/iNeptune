//
//  ViewController.swift
//  2주차 위클리미션
//
//  Created by 제민우 on 2023/10/02.
//

import UIKit

final class ViewController: UIViewController {

    let dummyVC = DummyViewController()
    
    lazy var myNeighborhoodButton: UIButton = {
        
        var container = AttributeContainer()
        container.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        
        var config = UIButton.Configuration.plain()
        config.baseForegroundColor = .black
        config.attributedTitle = AttributedString("대연제4동", attributes: container)
        
        let symbolConfig = UIImage.SymbolConfiguration(pointSize: 10, weight: .semibold)
        config.image = UIImage(systemName: "chevron.down", withConfiguration: symbolConfig)
        config.imagePlacement = .trailing
        config.imagePadding = 3
        config.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
        let button = UIButton(configuration: config)
        
        let mainNeighborhood = UIAction(
            title: "내 동네",
            image: nil,
            handler: { _ in print("내 동네")}
        )
        let subNeighborhood = UIAction(
            title: "다른 동네",
            image: nil,
            handler: { _ in print("다른 동네")}
        )
        let setMyNeighborhood = UIAction(
            title: "내 동네 설정하기",
            image: nil,
            handler: { _ in print("내 동네 설정하기")}
        )
        
        button.menu = UIMenu(options: .displayInline, children: [mainNeighborhood, subNeighborhood, setMyNeighborhood])
        button.showsMenuAsPrimaryAction = true
        button.changesSelectionAsPrimaryAction = true
    
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureNaviBarLayout()
        configureNaviBarItem()
    }
}

// MARK: Configure Navigation Controller
extension ViewController {
    private func configureNaviBarLayout() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .white
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    private func configureNaviBarItem() {
        
        let allServiceButton = UIBarButtonItem(
            image: UIImage(systemName: "text.justify"),
            style: .plain,
            target: self,
            action: #selector(didTapNaviBarRightItems)
        )
        let findButton = UIBarButtonItem(
            image: UIImage(systemName: "magnifyingglass"),
            style: .plain,
            target: self,
            action: #selector(didTapNaviBarRightItems)
        )
        let notificationButton = UIBarButtonItem(
            image: UIImage(systemName: "bell"),
            style: .plain,
            target: self,
            action: #selector(didTapNaviBarRightItems)
        )
        
        allServiceButton.tintColor = .black
        findButton.tintColor = .black
        notificationButton.tintColor = .black

        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: myNeighborhoodButton)
        navigationItem.rightBarButtonItems = [notificationButton, allServiceButton, findButton]
    }
}

// MARK: Configure AddTarget
extension ViewController {
    @objc private func didTapNaviBarRightItems() {
        navigationController?.pushViewController(dummyVC, animated: true)
    }
    
    @objc private func didTapMyNeighborHoodButton() {
        myNeighborhoodButton.isSelected.toggle()
    }
}
