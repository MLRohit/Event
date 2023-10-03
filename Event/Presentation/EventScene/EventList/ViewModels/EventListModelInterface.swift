//
//  EventListInterface.swift
//  Event
//
//  Created by Rohit Lama on 21/09/2023.
//

import Foundation

typealias DefaultEventListViewModel = EventListViewModelInput & EventListViewModelOutput

protocol EventListViewModelInput {
    func openDetails()
}

protocol EventListViewModelOutput {
    
}

struct EventListViewModelActions {
    let openDetails: () -> Void
}

