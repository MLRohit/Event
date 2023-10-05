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
    var numberOfSections: Int { get set }
}

struct EventListViewModelActions {
    let openDetails: () -> Void
}

