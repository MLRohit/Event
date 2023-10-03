//
//  TabBarViewController.swift
//  Event
//
//  Created by Rohit Lama on 26/09/2023.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    // MARK: - Properties
    
    private lazy var customBar: TabBarView = {
        let bar = TabBarView()
        bar.constrainHeight(constant: tabBar.bounds.height)
        return bar
    }()
    
    // MARK: - Create TabBarViewController
    
    static func create(with viewModel: DefaultTabBarViewModel, childViewControllers: [UIViewController]) -> TabBarViewController {
        let view = TabBarViewController()
        view.viewModel = viewModel
        view.viewControllers = childViewControllers
        return view
    }
    
    // MARK: - Properties
    
    private var viewModel: DefaultTabBarViewModel!
    
    // MARK: - Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.backgroundColor = .white
        prepareLayout()
        setupActions()
    }
    
    private func prepareLayout() {
        view.addSubview(customBar)
        customBar.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        customBar.centerXInSuperview()
        customBar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    private func setupActions() {
        customBar.onTabSelect = { [weak self] index in
            self?.selectedIndex = index
        }
    }

}
