//
//  TabBarController.swift
//  2주차 위클리미션
//
//  Created by 제민우 on 2023/10/02.
//

import UIKit

final class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureInitialSetting()
        configureTabBarItems()
    }
}

// MARK: Configure TabBar

extension TabBarController {
    private func configureTabBarItems() {
        
        let homeVC = UINavigationController(rootViewController: ViewController())
        let vilageLiveVC = DummyViewController()
        let aroundMeVC = DummyViewController()
        let chatVC = DummyViewController()
        let myCarrot = DummyViewController()
        
        setViewControllers([homeVC, vilageLiveVC, aroundMeVC, chatVC, myCarrot], animated: true)
        
        homeVC.tabBarItem = UITabBarItem(
            title: "홈",
            image: UIImage(systemName: "house"),
            selectedImage: UIImage(systemName: "house.fill")
        )
        vilageLiveVC.tabBarItem = UITabBarItem(
            title: "동네생활",
            image: UIImage(systemName: "list.clipboard"),
            selectedImage: UIImage(systemName: "list.clipboard.fill")
        )
        aroundMeVC.tabBarItem = UITabBarItem(
            title: "내 근처",
            image: UIImage(systemName: "location"),
            selectedImage: UIImage(systemName: "location.fill")
        )
        chatVC.tabBarItem = UITabBarItem(
            title: "채팅",
            image: UIImage(systemName: "bubble.left"),
            selectedImage: UIImage(systemName: "bubble.left.fill")
        )
        myCarrot.tabBarItem = UITabBarItem(
            title: "나의 당근",
            image: UIImage(systemName: "person"),
            selectedImage: UIImage(systemName: "person.fill")
        )
    }
    
    private func configureInitialSetting() {
        tabBar.tintColor = .black
        tabBar.isTranslucent = false
    }
}
