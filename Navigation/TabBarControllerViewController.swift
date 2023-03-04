//
//  TabBarControllerViewController.swift
//  Navigation
//
//  Created by Konstantin on 03.03.23.
//

import UIKit

final class TabBarControllerViewController: UITabBarController {
    private let firstVC = FirstViewController()
    private let secondVC = SecondViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()
    }
    private func setupControllers() {
        
        firstVC.tabBarItem.title = "Feed"
        firstVC.tabBarItem.image = UIImage(systemName: "list.dash")
        secondVC.tabBarItem.title = "Profile"
        secondVC.tabBarItem.image = UIImage(systemName: "person")
        viewControllers = [firstVC, secondVC]
        tabBar.tintColor = #colorLiteral(red: 0.1421837007, green: 0.2885711796, blue: 0.4217968184, alpha: 1)
        tabBar.unselectedItemTintColor = #colorLiteral(red: 0.2488658722, green: 0.3609401917, blue: 0.6296047722, alpha: 1)
    }
}
