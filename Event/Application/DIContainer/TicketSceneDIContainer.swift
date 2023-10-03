//
//  TicketSceneDIContainer.swift
//  Event
//
//  Created by Rohit Lama on 02/10/2023.
//

import UIKit.UINavigationController

final class TicketSceneDIContainer {
    
    // MARK: - Event List
    
    func makeTicketListController(actions: TicketListViewModelActions) -> TicketListViewController {
        return TicketListViewController.create(with: makeTicketListViewModel(with: actions))
    }
    
    private func makeTicketListViewModel(with actions: TicketListViewModelActions) -> TicketListViewModel {
        return TicketListViewModel(actions: actions)
    }
    
    // MARK: - Flow Coordinators

    func makeTicketFlowCoordinator() -> TicketFlowCoordinator {
        return TicketFlowCoordinator(dependencies: self)
    }
    
}

// MARK: - EventFlowCoordinatorDependencies

extension TicketSceneDIContainer: TicketFlowCoordinatorDependencies {}

