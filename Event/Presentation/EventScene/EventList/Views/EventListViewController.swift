//
//  ViewController.swift
//  Event
//
//  Created by Rohit Lama on 21/09/2023.
//

import UIKit

class EventListViewController: BaseViewController {
    
    // MARK: - Properties
    
    private var screen: EventListScreen {
        baseScreen as! EventListScreen
    }
    private var viewModel: DefaultEventListViewModel!
        
    static func create(of screen: BaseScreen = EventListScreen(), with viewModel: DefaultEventListViewModel) -> EventListViewController {
        let view = EventListViewController(baseScreen: screen)
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

