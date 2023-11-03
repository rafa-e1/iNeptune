//
//  TabBarController.swift
//  FifthMission
//
//  Created by Rafael on 10/30/23.
//

import UIKit

class TabBarController: UITabBarController {
    
    private lazy var articleViewController: UIViewController = {
        let articleVC = ArticleViewController()
        
        let tabBarItem = UITabBarItem(title: "뉴스", image: UIImage(systemName: "newspaper"), tag: 0)
        articleVC.tabBarItem = tabBarItem
        
        if let nickname = UserDefaults.standard.string(forKey: "nickname") {
            navigationItem.title = "\(nickname)님 환영합니다!"
        } else if let idNickname = UserDefaults.standard.string(forKey: "idNickname") {
            navigationItem.title = "\(idNickname)님 환영합니다!"
        }

        let backBarButtonItem = UIBarButtonItem(
            title: "",
            style: .plain,
            target: self,
            action: nil
        )
        
        self.navigationItem.backBarButtonItem = backBarButtonItem
        
        return articleVC
    }()
    
    private lazy var weatherViewController: UIViewController = {
        let weatherVC = WeatherViewController()
        let tabBarItem = UITabBarItem(title: "날씨", image: UIImage(systemName: "sun.max"), tag: 1)
        weatherVC.tabBarItem = tabBarItem
        return weatherVC
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .systemBackground
        
        viewControllers = [
            articleViewController,
            weatherViewController
        ]
        
        configureTabBar()
    }

}

extension TabBarController {
    private func configureTabBar() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.stackedLayoutAppearance.normal.iconColor = .label
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [
            .foregroundColor: UIColor.label
        ]
        
        tabBar.standardAppearance = appearance
        
        tabBar.backgroundColor = .systemBackground
        tabBar.tintColor = .label
        tabBar.unselectedItemTintColor = .label
        
        tabBar.layer.masksToBounds = false
        tabBar.layer.shadowColor = UIColor.label.cgColor
        tabBar.layer.shadowOpacity = 0.5
        tabBar.layer.shadowOffset = CGSize(width: 0, height: 3)
        tabBar.layer.shadowRadius = 5
    }
}
