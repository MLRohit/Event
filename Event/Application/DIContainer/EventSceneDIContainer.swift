//
//  EventSceneDIContainer.swift
//  Event
//
//  Created by Rohit Lama on 21/09/2023.
//

import UIKit.UINavigationController

final class EventSceneDIContainer {
    
    // MARK: - Event List
    
    func makeEventListController(actions: EventListViewModelActions) -> EventListViewController {
        return EventListViewController.create(with: makeEventListViewModel(with: actions))
    }
    
    private func makeEventListViewModel(with actions: EventListViewModelActions) -> EventListViewModel {
        return EventListViewModel(actions: actions)
    }
    
    // MARK: - Flow Coordinators

    func makeEventFlowCoordinator() -> EventFlowCoordinator {
        return EventFlowCoordinator(dependencies: self)
    }
    
}

// MARK: - EventFlowCoordinatorDependencies

extension EventSceneDIContainer: EventFlowCoordinatorDependencies {}
