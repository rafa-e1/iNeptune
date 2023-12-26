//
//  SceneDelegate.swift
//  FifthMission
//
//  Created by Rafael on 10/30/23.
//

import UIKit

import KakaoSDKAuth

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        if let url = URLContexts.first?.url {
            if (AuthApi.isKakaoTalkLoginUrl(url)) {
                _ = AuthController.handleOpenUrl(url: url)
            }
        }
    }
    
    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        
        let tabBarController = TabBarController()
        
        if UserDefaults.standard.string(forKey: "isKakaoLoggedIn") != nil {
            window?.rootViewController = UINavigationController(rootViewController: tabBarController)
        } else if UserDefaults.standard.string(forKey: "isLoggedIn") != nil {
            window?.rootViewController = UINavigationController(rootViewController: tabBarController)
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
        window.rootViewController = UINavigationController(rootViewController: TabBarController())
    }

}

