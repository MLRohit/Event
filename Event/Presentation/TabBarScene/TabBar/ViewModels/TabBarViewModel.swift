//
//  TabBarViewModel.swift
//  Event
//
//  Created by Rohit Lama on 26/09/2023.
//

import UIKit

final class TabBarViewModel: DefaultTabBarViewModel {
    
    // MARK: - Properties
    
    private let actions: TabBarViewModelActions?
    
    // MARK: - Initialization

    init(actions: TabBarViewModelActions? = nil) {
        self.actions = actions
    }
    
}

