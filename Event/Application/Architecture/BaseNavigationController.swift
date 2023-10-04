//
//  BaseNavigationController.swift
//  Event
//
//  Created by Rohit Lama on 04/10/2023.
//

import UIKit

class BaseNavigationController: UINavigationController {
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        setupAppreance()
        setupNavigationBar()
    }
    
    private func setupAppreance() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .appGreen
        appearance.titleTextAttributes = [NSAttributedString.Key.font: UIFont.appFont(type: .roboto(.medium)),
                                          NSAttributedString.Key.foregroundColor: UIColor.green]
        appearance.largeTitleTextAttributes = [NSAttributedString.Key.font: UIFont.appFont(type: .roboto(.medium), size: .heading1),
                                               NSAttributedString.Key.foregroundColor: UIColor.green]
        navigationBar.tintColor = .white
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func setupNavigationBar() {
        // Create a back button
        let backButton = UIBarButtonItem(title: "Back",
                                         style: .plain,
                                         target: self,
                                         action: #selector(backButtonTapped))
        navigationItem.leftBarButtonItem = backButton

        // Create two right buttons
        let rightButton1 = UIBarButtonItem(image: ,
                                           style: .plain,
                                           target: self,
                                           action: #selector(rightButton1Tapped))
        let rightButton2 = UIBarButtonItem(image: ,
                                           style: .plain,
                                           target: self,
                                           action: #selector(rightButton2Tapped))
        navigationItem.rightBarButtonItems = [rightButton1, rightButton2]

        // Set the title
        navigationItem.title = "Your Title Here"
    }

    @objc func backButtonTapped() {
        // Handle back button tap here
        popViewController(animated: true)
    }

    @objc func rightButton1Tapped() {
        // Handle the first right button tap here
    }

    @objc func rightButton2Tapped() {
        // Handle the second right button tap here
    }
    
    deinit {
        debugPrint("De-Initialized: \(String(describing: self))")
    }
    
}
