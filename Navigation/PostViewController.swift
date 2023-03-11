//
//  PostViewController.swift
//  Navigation
//
//  Created by Konstantin on 04.03.23.
//

import UIKit

class PostViewController: UIViewController {
    let post: Post
        init(post: Post) {
            self.post = post
            super.init(nibName: nil, bundle: nil)
        }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.02840791273, green: 0.7016910848, blue: 0.9924317979, alpha: 1)
        title = post.title
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.1997225817, green: 0.41647166, blue: 0.5943888241, alpha: 1)]
        makeUIBarButtonItem()
    }
    private func makeUIBarButtonItem() {
    let infoButton = UIBarButtonItem(image: UIImage(systemName: "questionmark.folder"), style: .done, target: self, action: #selector(infoButtonTapped))
    navigationItem.rightBarButtonItem = infoButton
    }
    @objc private func infoButtonTapped() {
        InfoViewController().modalPresentationStyle = .fullScreen
        present(InfoViewController(), animated: true, completion: nil)
    }
}
