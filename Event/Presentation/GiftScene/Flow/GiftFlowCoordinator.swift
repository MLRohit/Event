//
//  GiftFlowCoordinator.swift
//  Event
//
//  Created by Rohit Lama on 02/10/2023.
//

import Foundation

import UIKit.UINavigationController

protocol GiftFlowCoordinatorDependencies {
    
    func makeGiftFlowCoordinator() -> GiftFlowCoordinator
    func makeGiftListController(actions: GiftListViewModelActions) -> GiftListViewController
    
}

final class GiftFlowCoordinator {
    
    // MARK: - Properties
    
    var navigationController: UINavigationController?
    private let dependencies: GiftFlowCoordinatorDependencies
    
    // MARK: - Initializer
    
    init(dependencies: GiftFlowCoordinatorDependencies) {
        self.dependencies = dependencies
    }
    
    func start() -> UINavigationController {
        let actions = GiftListViewModelActions(openDetails: openDetailsPage)
        let navVC = BaseNavigationController(rootViewController: dependencies.makeGiftListController(actions: actions))
        navigationController = navVC
//        navigationController?.tabBarItem = UITabBarItem(title: "Gift", image: UIImage(systemName: "gift"), selectedImage: UIImage(systemName: "gift.fill"))
        return navVC
    }
    
    func openDetailsPage() {
        
    }
    
}
