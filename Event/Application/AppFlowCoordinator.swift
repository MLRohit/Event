//
//  AppFlowCoordinator.swift
//  Event
//
//  Created by Rohit Lama on 21/09/2023.
//

import UIKit.UINavigationController

final class AppFlowCoordinator {
    
    // MARK: - Properties
    private let appDIContainer: AppDIContainer
    
    // MARK: - Initializer
    
    init(appDIContainer: AppDIContainer) {
        self.appDIContainer = appDIContainer
    }
    
    func start(in window: UIWindow?) {
        let tabbarSceneDIContainer = appDIContainer.makeTabBarSceneDIContainer()
        let flow = tabbarSceneDIContainer.makeTabBarFlowCoordinator().start()
        window?.rootViewController = flow
    }
    
}
