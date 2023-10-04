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
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        navigationItem.leftBarButtonItem = createBarButton(image: .back, action: #selector(onBackTap))
        navigationItem.rightBarButtonItems = [createBarButton(image: .navCalender, action: #selector(onCalendarTap)),
                                              createBarButton(image: .navLocation, action: #selector(onLocationTap))]
        navigationItem.title = "Events"
    }
    
    private func createBarButton(image: UIImage?, action: Selector) -> UIBarButtonItem {
        UIBarButtonItem(image: image,
                        style: .plain,
                        target: self,
                        action: action)
    }
    
    @objc private func onBackTap() {
        print("Back Button Tapped")
    }
    
    @objc private func onLocationTap() {
        print("Location Tapped")
    }
    
    @objc private func onCalendarTap() {
        print("Calendar Tapped")
    }
    
}

