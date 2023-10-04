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
    }
    
    private func setupAppreance() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .appGreen
        appearance.titleTextAttributes = [NSAttributedString.Key.font: UIFont.appFont(type: .roboto(.medium)),
                                          NSAttributedString.Key.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [NSAttributedString.Key.font: UIFont.appFont(type: .roboto(.medium), size: .heading1),
                                               NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationBar.tintColor = .white
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    deinit {
        debugPrint("De-Initialized: \(String(describing: self))")
    }
    
}
