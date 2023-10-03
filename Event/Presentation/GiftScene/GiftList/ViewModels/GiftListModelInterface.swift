//
//  GiftListModelInterface.swift
//  Event
//
//  Created by Rohit Lama on 02/10/2023.
//

import Foundation

typealias DefaultGiftListViewModel = GiftListViewModelInput & GiftListViewModelOutput

protocol GiftListViewModelInput {
    func openDetails()
}

protocol GiftListViewModelOutput {
    
}

struct GiftListViewModelActions {
    let openDetails: () -> Void
}
