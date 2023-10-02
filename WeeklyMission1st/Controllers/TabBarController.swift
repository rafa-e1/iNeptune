//
//  TabBarController.swift
//  WeeklyMission1st
//
//  Created by 제민우 on 2023/09/24.
//

import UIKit

final class TabBarController: UITabBarController {

    private let baeminMainButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "BaeminMainButton"), for: .normal)
        button.addTarget(TabBarController.self, action: #selector(didTapBaeminMainButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureInitialSetting()
//        configureTabBarLayout()

        configureTabBarItems()
        selectedIndex = 2

    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        configureTabBarLayout()
//    }
    
    private func configureInitialSetting() {
        tabBar.isTranslucent = false
        tabBar.barTintColor = UIColor.blue
        tabBar.tintColor = .black
    }
    
    private func configureTabBarItems() {
        
        let baeminMainVC = UINavigationController(rootViewController: DeliverMainViewController())
        let searchVC = NextPageViewController()
        let pickVC = NextPageViewController()
        let orderListVC = NextPageViewController()
        let myPageVC = NextPageViewController()
        
        setViewControllers([searchVC, pickVC, baeminMainVC, orderListVC, myPageVC], animated: true)

        searchVC.tabBarItem = UITabBarItem(title: "검색", image: UIImage(systemName: "magnifyingglass"), tag: 0)
        pickVC.tabBarItem = UITabBarItem(title: "찜", image: UIImage(systemName: "heart"), tag: 1)
        baeminMainVC.tabBarItem.tag = 2
        orderListVC.tabBarItem = UITabBarItem(title: "주문내역", image: UIImage(systemName: "list.clipboard"), tag: 3)
        myPageVC.tabBarItem = UITabBarItem(title: "my배민", image: UIImage(systemName: "person"), tag: 4)
    }
    
    private func configureTabBarLayout() {
        tabBar.layer.masksToBounds = true
        tabBar.layer.cornerRadius = tabBar.frame.height * 0.4
        tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        tabBar.setNeedsLayout()
        tabBar.layoutIfNeeded()
    }
}

// MARK: Configure MainButton
extension TabBarController {
    
    @objc private func didTapBaeminMainButton() {
        
    }
    
    private func configureLayout() {
        self.tabBar.addSubview(baeminMainButton)
        baeminMainButton.translatesAutoresizingMaskIntoConstraints = false
    }
}
