//
//  TicketListViewController.swift
//  Event
//
//  Created by Rohit Lama on 02/10/2023.
//

import UIKit

class TicketListViewController: BaseViewController {
    
    // MARK: - Properties
    
    private var screen: TicketListScreen {
        baseScreen as! TicketListScreen
    }
    private var viewModel: DefaultTicketListViewModel!
        
    static func create(of screen: BaseScreen = TicketListScreen(), with viewModel: DefaultTicketListViewModel) -> TicketListViewController {
        let view = TicketListViewController(baseScreen: screen)
        view.viewModel = viewModel
        return view
    }
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        if navigationController != nil {
            print("EventListViewController: Found navigation")
        }
        screen.onDetailsButtonTap = { [weak self] in
            self?.viewModel.openDetails()
        }
    }

}
