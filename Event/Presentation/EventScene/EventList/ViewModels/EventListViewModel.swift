//
//  EventListViewModel.swift
//  Event
//
//  Created by Rohit Lama on 21/09/2023.
//

import Foundation

class EventListViewModel: DefaultEventListViewModel {
    
    // MARK: - Properties
    
    private let actions: EventListViewModelActions?
    
    var numberOfSections: Int = 2
    
    // MARK: - Initialization

    init(actions: EventListViewModelActions? = nil) {
        self.actions = actions
    }
    
}

extension EventListViewModel {
    
    func openDetails() {
        actions?.openDetails()
    }
    
}
