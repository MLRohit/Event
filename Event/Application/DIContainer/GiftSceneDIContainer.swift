//
//  GiftSceneDIContainer.swift
//  Event
//
//  Created by Rohit Lama on 02/10/2023.
//

import UIKit.UINavigationController

final class GiftSceneDIContainer {
    
    // MARK: - Event List
    
    func makeGiftListController(actions: GiftListViewModelActions) -> GiftListViewController {
        return GiftListViewController.create(with: makeGiftListViewModel(with: actions))
    }
    
    private func makeGiftListViewModel(with actions: GiftListViewModelActions) -> GiftListViewModel {
        return GiftListViewModel(actions: actions)
    }
    
    // MARK: - Flow Coordinators

    func makeGiftFlowCoordinator() -> GiftFlowCoordinator {
        return GiftFlowCoordinator(dependencies: self)
    }
    
}

// MARK: - EventFlowCoordinatorDependencies

extension GiftSceneDIContainer: GiftFlowCoordinatorDependencies {}
