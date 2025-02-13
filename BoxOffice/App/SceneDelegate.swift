//
//  SceneDelegate.swift
//  BoxOffice
//
//  Created by kjs on 13/01/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let boxOfficeService = BoxOfficeService()
        let viewController = BoxOfficeViewController(boxOfficeService: boxOfficeService)
        let navigationViewController = UINavigationController(rootViewController: viewController)
        
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = navigationViewController
        window?.makeKeyAndVisible()
    }
}
