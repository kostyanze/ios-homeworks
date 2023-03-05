//
//  FeedViewController.swift
//  Navigation
//
//  Created by Konstantin on 03.03.23.
//

import UIKit

class FeedViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.2787110666, green: 0.5656624554, blue: 0.8268137666, alpha: 1)
        let someButtonSet: UIButton = {
            let buttonToPost = UIButton(type: .system)
            buttonToPost.setTitle("to Post", for: .normal)
            buttonToPost.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
            buttonToPost.backgroundColor = #colorLiteral(red: 0.2097513893, green: 0.4205778408, blue: 0.605948458, alpha: 1)
            buttonToPost.setTitleColor(#colorLiteral(red: 0.6036218391, green: 0.7135323608, blue: 0.8413763145, alpha: 1), for: .normal)
            buttonToPost.layer.cornerRadius = 15
            buttonToPost.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(buttonToPost)
            NSLayoutConstraint.activate([
                buttonToPost.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                buttonToPost.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                buttonToPost.widthAnchor.constraint(equalToConstant: CGFloat(100)),
                buttonToPost.heightAnchor.constraint(equalToConstant: 30)
            ])
            return buttonToPost
        }()
        view.addSubview(someButtonSet)
    }
    @objc private func buttonTapped() {
        navigationController?.pushViewController(PostViewController(post: post), animated: true)
    }
    let post = Post(title: "News")
}
