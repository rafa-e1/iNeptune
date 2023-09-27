//
//  ViewController.swift
//  WeeklyMission1st
//
//  Created by 제민우 on 2023/09/20.
//

import UIKit

final class DeliverMainViewController: UIViewController {

    private let deliverMainView = DeliverMainView()
    
    override func loadView() {
        view = deliverMainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNaviBarLayout()
        configureNaviBarItem()
    }
}

// MARK: Configure Navi Bar
extension DeliverMainViewController {

    private func configureNaviBarLayout() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor =  #colorLiteral(red: 0.2200241983, green: 0.8307676315, blue: 0.8380222917, alpha: 1)
        appearance.shadowImage = UIImage()
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    private func configureNaviBarItem() {
        let adressButton: UIButton = {
            let button = UIButton(type: .custom)
    
            var container = AttributeContainer()
            container.font = UIFont.systemFont(ofSize: 18, weight: .bold)
            var config = UIButton.Configuration.plain()
            config.baseForegroundColor = .white
            config.attributedTitle = AttributedString("우리집", attributes: container)
            config.baseForegroundColor = UIColor.white
            
            let imageConfig = UIImage.SymbolConfiguration(pointSize: 20, weight: .light)
            config.image = UIImage(systemName: "arrowtriangle.down.fill", withConfiguration: imageConfig)
            config.imagePlacement = .trailing
            config.imagePadding = 5
            config.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
            button.configuration = config
            
            button.addTarget(self, action: #selector(didTapAdressButton), for: .touchUpInside)
            
            button.imageView!.translatesAutoresizingMaskIntoConstraints = false
            button.imageView!.widthAnchor.constraint(equalToConstant: 10).isActive = true
            button.imageView!.heightAnchor.constraint(equalToConstant: 6).isActive = true
            button.imageView!.centerYAnchor.constraint(equalTo: button.titleLabel!.centerYAnchor).isActive = true
            button.imageView!.leadingAnchor.constraint(equalTo: button.titleLabel!.trailingAnchor, constant: 10).isActive = true
            return button
        }()
        
        let allServiceButton = self.navigationItem.makeSFSymbolButton(self, action: #selector(didTapAllServiceButton), symbolName: "square.grid.2x2")
        let notificationCenterButton = self.navigationItem.makeSFSymbolButton(self, action: #selector(didTapAllServiceButton), symbolName: "bell")
        let cartButton = self.navigationItem.makeSFSymbolButton(self, action: #selector(didTapAllServiceButton), symbolName: "cart")

        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: adressButton)
        navigationItem.setRightBarButtonItems([cartButton, notificationCenterButton, allServiceButton], animated: true)
    }
}

extension DeliverMainViewController {
    
    @objc private func didTapAdressButton() {
        let nextVC = NextPageViewController()
        present(nextVC, animated: true)
    }
    
    @objc private func didTapAllServiceButton() {
        let nextVC = NextPageViewController()
        present(nextVC, animated: true)
    }
    
    @objc private func didTapNotificationCenterButton() {
        let nextVC = NextPageViewController()
        present(nextVC, animated: true)
    }
    
    @objc private func didTapCartButton() {
        let nextVC = NextPageViewController()
        present(nextVC, animated: true)
    }
}

extension UINavigationItem {
    func makeSFSymbolButton(_ target: Any?, action: Selector, symbolName: String) -> UIBarButtonItem {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: symbolName), for: .normal)
        button.addTarget(target, action: action, for: .touchUpInside)
        button.tintColor = .white
        
        let barButtonItem = UIBarButtonItem(customView: button)
        barButtonItem.customView?.translatesAutoresizingMaskIntoConstraints = false
        barButtonItem.customView?.heightAnchor.constraint(
            equalToConstant: 30
        ).isActive = true
        barButtonItem.customView?.widthAnchor.constraint(
            equalToConstant: 30
        ).isActive = true
        
        return barButtonItem
    }
}
