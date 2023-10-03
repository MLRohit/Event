//
//  TicketListModelInterface.swift
//  Event
//
//  Created by Rohit Lama on 02/10/2023.
//

import Foundation

typealias DefaultTicketListViewModel = TicketListViewModelInput & TicketListViewModelOutput

protocol TicketListViewModelInput {
    func openDetails()
}

protocol TicketListViewModelOutput {
    
}

struct TicketListViewModelActions {
    let openDetails: () -> Void
}
