//
//  TabbarFlowCoordinator.swift
//  Event
//
//  Created by Rohit Lama on 26/09/2023.
//

import Foundation

protocol TabBarFlowCoordinatorDependencies {
    
    func makeTabBarController(actions: TabBarViewModelActions) -> TabBarViewController
    
}

final class TabBarFlowCoordinator {
    
    private let dependencies: TabBarFlowCoordinatorDependencies

    init(dependencies: TabBarFlowCoordinatorDependencies) {
        self.dependencies = dependencies
    }
    
    func start() -> TabBarViewController {
        let actions = TabBarViewModelActions()
        return dependencies.makeTabBarController(actions: actions)
    }
    
}
