//
//  TicketFlowCoordinator.swift
//  Event
//
//  Created by Rohit Lama on 02/10/2023.
//

import UIKit.UINavigationController

protocol TicketFlowCoordinatorDependencies {
    
    func makeTicketFlowCoordinator() -> TicketFlowCoordinator
    func makeTicketListController(actions: TicketListViewModelActions) -> TicketListViewController
    
}

final class TicketFlowCoordinator {
    
    // MARK: - Properties
    
    var navigationController: UINavigationController?
    private let dependencies: TicketFlowCoordinatorDependencies
    
    // MARK: - Initializer
    
    init(dependencies: TicketFlowCoordinatorDependencies) {
        self.dependencies = dependencies
    }
    
    func start() -> UINavigationController {
        let actions = TicketListViewModelActions(openDetails: openDetailsPage)
        let navVC = UINavigationController(rootViewController: dependencies.makeTicketListController(actions: actions))
        navigationController = navVC
        navigationController?.tabBarItem = UITabBarItem(title: "Ticket", image: UIImage(systemName: "ticket"), selectedImage: UIImage(systemName: "ticket.fill"))
        return navVC
    }
    
    func openDetailsPage() {
        
    }
    
}
