//
//  EventFlowCoordinator.swift
//  Event
//
//  Created by Rohit Lama on 21/09/2023.
//

import UIKit.UINavigationController

protocol EventFlowCoordinatorDependencies {
    
    func makeEventFlowCoordinator() -> EventFlowCoordinator
    func makeEventListController(actions: EventListViewModelActions) -> EventListViewController
    
}

final class EventFlowCoordinator {
    
    // MARK: - Properties
    
    var navigationController: UINavigationController?
    private let dependencies: EventFlowCoordinatorDependencies
    
    // MARK: - Initializer
    
    init(dependencies: EventFlowCoordinatorDependencies) {
        self.dependencies = dependencies
    }
    
    func start() -> UINavigationController {
        let actions = EventListViewModelActions(openDetails: openDetailsPage)
        let navVC = UINavigationController(rootViewController: dependencies.makeEventListController(actions: actions))
        navigationController = navVC
//        navigationController?.tabBarItem = UITabBarItem(title: "Event", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))
        return navVC
    }
    
    func openDetailsPage() {
        
    }
    
}
