//
//  GiftListViewController.swift
//  Event
//
//  Created by Rohit Lama on 02/10/2023.
//

import UIKit

class GiftListViewController: BaseViewController {
    
    // MARK: - Properties
    
    private var screen: GiftListScreen {
        baseScreen as! GiftListScreen
    }
    private var viewModel: DefaultGiftListViewModel!
        
    static func create(of screen: BaseScreen = GiftListScreen(), with viewModel: DefaultGiftListViewModel) -> GiftListViewController {
        let view = GiftListViewController(baseScreen: screen)
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
