//
//  TicketListViewModel.swift
//  Event
//
//  Created by Rohit Lama on 02/10/2023.
//

import Foundation

class TicketListViewModel: DefaultTicketListViewModel {
    
    // MARK: - Properties
    
    private let actions: TicketListViewModelActions?
    
    // MARK: - Initialization

    init(actions: TicketListViewModelActions? = nil) {
        self.actions = actions
    }
    
}

extension TicketListViewModel {
    
    func openDetails() {
        actions?.openDetails()
    }
    
}
