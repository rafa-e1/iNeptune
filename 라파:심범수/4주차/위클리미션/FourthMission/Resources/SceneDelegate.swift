//
//  SceneDelegate.swift
//  FourthMission
//
//  Created by Rafael on 10/20/23.
//

import SwiftUI
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        
        let homeVC = HomeViewController()
        let hostingController = UIHostingController(rootView: homeVC)
        
        if UserDefaults.standard.string(forKey: "isLoggedIn") != nil {
            window?.rootViewController = hostingController
        } else {
            window?.rootViewController = LoginViewController()
        }
        
        window?.windowScene = windowScene
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }
    
    func rootViewController(_ viewController: UIViewController) {
        guard let window = self.window else { return }
        window.rootViewController = viewController
    }
    
}

