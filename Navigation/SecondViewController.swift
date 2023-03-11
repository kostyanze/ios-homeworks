//
//  SecondViewController.swift
//  Navigation
//
//  Created by Konstantin on 03.03.23.
//

import UIKit

class SecondViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setViewControllers([ProfileViewController()], animated: false)
    }
}
