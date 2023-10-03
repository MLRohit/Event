//
//  TabBarViewController.swift
//  Event
//
//  Created by Rohit Lama on 26/09/2023.
//

import UIKit

class TabBarViewController: UITabBarController {
    
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
    }

}
