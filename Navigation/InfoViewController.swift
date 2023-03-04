//
//  InfoViewController.swift
//  Navigation
//
//  Created by Konstantin on 04.03.23.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.4891369258, green: 0.6518346285, blue: 0.9515328161, alpha: 0.8470588235)
        let buttonAlert = UIButton(type: .system)
        buttonAlert.setTitle("EXIT", for: .normal)
        buttonAlert.addTarget(self, action: #selector(alertButtonTapped), for: .touchUpInside)
        buttonAlert.backgroundColor = #colorLiteral(red: 0.2097513893, green: 0.4205778408, blue: 0.605948458, alpha: 1)
        buttonAlert.setTitleColor(#colorLiteral(red: 0.6036218391, green: 0.7135323608, blue: 0.8413763145, alpha: 1), for: .normal)
        buttonAlert.layer.cornerRadius = 15
        view.addSubview(buttonAlert)
        buttonAlert.translatesAutoresizingMaskIntoConstraints = true
        buttonAlert.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonAlert.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonAlert.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            buttonAlert.widthAnchor.constraint(equalToConstant: CGFloat(100)),
            buttonAlert.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    @objc private func alertButtonTapped() {
        let alert = UIAlertController(title: "Are you really?", message: "Please, do not go 😓", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: {_ in
            print("Cancel")
        }))
        alert.addAction(UIAlertAction(title: "Exit", style: UIAlertAction.Style.destructive, handler: {_ in
            print("Exit")
            UIControl().sendAction(#selector(NSXPCConnection.suspend), to: UIApplication.shared, for: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
}
