//
//  TabBarSceneDIContainer.swift
//  Event
//
//  Created by Rohit Lama on 26/09/2023.
//

import UIKit

final class TabBarSceneDIContainer {
    
    struct Dependencies {
        let eventDependencies: EventFlowCoordinatorDependencies
        let ticketDependencies: TicketFlowCoordinatorDependencies
        let giftDependencies: GiftFlowCoordinatorDependencies
    }
    
    // MARK: - Properties
    
    private let dependencies: Dependencies
    private lazy var viewControllers: [UIViewController] = {
        return [getEventNavigation(), getTicketNavigation(), getGiftNavigation()]
    }()
    
    // MARK: - Initializer
    
    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }
    
    // MARK: - Tabbar
    
    func makeTabBarController(actions: TabBarViewModelActions) -> TabBarViewController {
        let tabbarController = TabBarViewController.create(with: makeTabBarViewModel(with: actions), childViewControllers: viewControllers)
        return tabbarController
    }
    
    private func makeTabBarViewModel(with actions: TabBarViewModelActions) -> TabBarViewModel {
        return TabBarViewModel(actions: actions)
    }
            
    // MARK: - Flow Coordinators

    func makeTabBarFlowCoordinator() -> TabBarFlowCoordinator {
        return TabBarFlowCoordinator(dependencies: self)
    }
    
}

// MARK: - Navigaiton Functions
extension TabBarSceneDIContainer {
    
    private func getEventNavigation() -> UINavigationController {
        let eventCoordinator = dependencies.eventDependencies.makeEventFlowCoordinator()
        return eventCoordinator.start()
    }
    
    private func getTicketNavigation() -> UINavigationController {
        let ticketCoordinator = dependencies.ticketDependencies.makeTicketFlowCoordinator()
        return ticketCoordinator.start()
    }
    
    private func getGiftNavigation() -> UINavigationController {
        let giftCoordinator = dependencies.giftDependencies.makeGiftFlowCoordinator()
        return giftCoordinator.start()
    }
    
}

extension TabBarSceneDIContainer: TabBarFlowCoordinatorDependencies { }
