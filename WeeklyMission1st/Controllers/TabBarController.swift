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
        configureTabBarItems()
//        configureTabBarLayout()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureTabBarLayout()
    }
    private func configureInitialSetting() {
        tabBarController?.selectedIndex = 2
        tabBar.isTranslucent = false
        tabBar.barTintColor = UIColor.white
        tabBar.tintColor = .black
    }
    
    private func configureTabBarItems() {
        
        let baeminMainVC = UINavigationController(rootViewController: DeliverMainViewController())
        let searchVC = NextPageViewController()
        let pickVC = NextPageViewController()
        let orderListVC = NextPageViewController()
        let myPageVC = NextPageViewController()
        
        setViewControllers([searchVC, pickVC, baeminMainVC, orderListVC, myPageVC], animated: true)
 
        searchVC.title = "검색"
        pickVC.title = "찜"
        orderListVC.title = "주문내역"
        myPageVC.title = "my배민"
        
        
        guard let items = tabBar.items else { return }
        items[0].image = UIImage(systemName: "magnifyingglass")
        items[1].image = UIImage(systemName: "heart")
        items[2].image = UIImage(systemName: "list.clipboard")
        items[3].image = UIImage(systemName: "list.clipboard")
        items[4].image = UIImage(systemName: "person")
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

// MARK: 프리뷰
import SwiftUI
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Container().edgesIgnoringSafeArea(.all)
    }
    struct Container: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> UIViewController {
            return     UINavigationController(rootViewController: TabBarController())
        }
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        }
        typealias  UIViewControllerType = UIViewController
    }
}
