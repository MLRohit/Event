//
//  AppDIContainer.swift
//  Event
//
//  Created by Rohit Lama on 21/09/2023.
//

import Foundation

final class AppDIContainer {
    
    // MARK: - Event App
    
    func makeEventSceneDIContainer() -> EventSceneDIContainer {
        return EventSceneDIContainer()
    }
    
    func makeTicketSceneDIContainer() -> TicketSceneDIContainer {
        return TicketSceneDIContainer()
    }
    
    func makeGiftSceneDIContainer() -> GiftSceneDIContainer {
        return GiftSceneDIContainer()
    }
    
    func makeTabBarSceneDIContainer() -> TabBarSceneDIContainer {
        let dependencies = TabBarSceneDIContainer.Dependencies(eventDependencies: makeEventSceneDIContainer(),
                                                               ticketDependencies: makeTicketSceneDIContainer(),
                                                               giftDependencies: makeGiftSceneDIContainer())
        return TabBarSceneDIContainer(dependencies: dependencies)
    }
    
}
