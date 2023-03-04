//
//  AppDelegate.swift
//  Navigation
//
//  Created by Konstantin on 03.03.23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .gray
        window?.rootViewController = TabBarControllerViewController()
        window?.makeKeyAndVisible()
        return true
    }
}

