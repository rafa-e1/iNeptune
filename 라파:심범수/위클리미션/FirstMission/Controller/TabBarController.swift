//
//  TabBarController.swift
//  FirstMission
//
//  Created by Rafael on 2023/09/24.
//

import UIKit

class TabBarController: UITabBarController {
    
    private lazy var searchViewController: UIViewController = {
        let searchVC = SearchViewController()
        let tabBarItem = UITabBarItem(title: "검색", image: UIImage(systemName: "magnifyingglass"), tag: 0)
        searchVC.tabBarItem = tabBarItem
        return searchVC
    }()
    
    private lazy var favoriteViewController: UIViewController = {
        let favoriteVC = FavoriteViewController()
        let tabBarItem = UITabBarItem(title: "찜", image: UIImage(systemName: "heart"), tag: 1)
        favoriteVC.tabBarItem = tabBarItem
        return favoriteVC
    }()
    
    private lazy var homeViewController: UIViewController = {
        let homeVC = HomeViewController()
        let navigationController = UINavigationController(rootViewController: homeVC)
        return navigationController
    }()
    
    private lazy var orderedListViewController: UIViewController = {
        let orderedListVC = OrderedListViewController()
        let tabBarItem = UITabBarItem(title: "주문내역", image: UIImage(systemName: "doc.plaintext"), tag: 3)
        orderedListVC.tabBarItem = tabBarItem
        return orderedListVC
    }()
    
    private lazy var myBMViewController: UIViewController = {
        let myBMVC = MyBMViewController()
        let tabBarItem = UITabBarItem(title: "my배민", image: UIImage(systemName: "person"), tag: 4)
        myBMVC.tabBarItem = tabBarItem
        return myBMVC
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = #colorLiteral(red: 0.9647058845, green: 0.9647058845, blue: 0.9647058845, alpha: 1)
        
        viewControllers = [
            searchViewController,
            favoriteViewController,
            homeViewController,
            orderedListViewController,
            myBMViewController
        ]
        
        configureTabBar()
        setupMainButton()
        
        selectedIndex = 2
    }
    
    func setupMainButton() {
        let mainButton = UIButton(frame: CGRect(x: 0, y: 0, width: 55, height: 55))
        var mainButtonFrame = mainButton.frame
        mainButtonFrame.origin.y = view.bounds.height - mainButtonFrame.height - 35
        mainButtonFrame.origin.x = view.bounds.width / 2 - mainButtonFrame.size.width / 2
        mainButton.frame = mainButtonFrame
        
        mainButton.backgroundColor = #colorLiteral(red: 0.1485638618, green: 0.7960942984, blue: 0.7803830504, alpha: 1)
        mainButton.layer.borderWidth = 1
        mainButton.layer.borderColor = UIColor.black.cgColor
        mainButton.layer.cornerRadius = mainButtonFrame.height / 2
        mainButton.clipsToBounds = true
        
        view.addSubview(mainButton)
        
        if let customFont = UIFont(name: "BMEuljiro10yearslaterOTF", size: 22) {
            mainButton.titleLabel?.font = customFont
        } else {
            print("Cannot found")
            mainButton.titleLabel?.font = UIFont.systemFont(ofSize: 22)
        }
        
        mainButton.setTitle("배민", for: .normal)
        mainButton.addTarget(self, action: #selector(menuButtonAction), for: .touchUpInside)
        
        view.layoutIfNeeded()
    }
    
    @objc private func menuButtonAction(sender: UIButton) {
        selectedIndex = 2
    }

}

extension TabBarController {
    private func configureTabBar() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .clear
        appearance.stackedLayoutAppearance.normal.iconColor = .darkGray
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [
            .foregroundColor: UIColor.darkGray
        ]
        
        tabBar.standardAppearance = appearance
        
        tabBar.backgroundColor = .white
        tabBar.tintColor = .darkGray
        tabBar.unselectedItemTintColor = .darkGray
        
        tabBar.layer.masksToBounds = false
        tabBar.layer.shadowColor = UIColor.black.cgColor
        tabBar.layer.shadowOpacity = 0.5
        tabBar.layer.shadowOffset = CGSize(width: 0, height: 3)
        tabBar.layer.shadowRadius = 5
        
        tabBar.layer.cornerRadius = 20
    }
}
