//
//  FirstViewController.swift
//  Navigation
//
//  Created by Konstantin on 03.03.23.
//

import UIKit

class FirstViewController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViewControllers([FeedViewController()], animated: false)
    }
}
