//
//  GiftListViewModel.swift
//  Event
//
//  Created by Rohit Lama on 02/10/2023.
//

import Foundation

class GiftListViewModel: DefaultGiftListViewModel {
    
    // MARK: - Properties
    
    private let actions: GiftListViewModelActions?
    
    // MARK: - Initialization

    init(actions: GiftListViewModelActions? = nil) {
        self.actions = actions
    }
    
}

extension GiftListViewModel {
    
    func openDetails() {
        actions?.openDetails()
    }
    
}
