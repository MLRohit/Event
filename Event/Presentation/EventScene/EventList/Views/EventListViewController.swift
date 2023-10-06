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
        setupTableView()
    }
    
    private func setupNavigationBar() {
        navigationItem.leftBarButtonItem = createBarButton(image: .back, action: #selector(onBackTap))
        navigationItem.rightBarButtonItems = [createBarButton(image: .navCalender, action: #selector(onCalendarTap)),
                                              createBarButton(image: .navLocation, action: #selector(onLocationTap))]
        navigationItem.title = "Events"
    }
    
    private func setupTableView() {
        screen.tableView.dataSource = self
        screen.tableView.delegate = self
    }
    
    private func createBarButton(image: UIImage?, action: Selector) -> UIBarButtonItem {
        UIBarButtonItem(image: image,
                        style: .plain,
                        target: self,
                        action: action)
    }
    
    // MARK: - @objc Functions
    
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

// MARK: - UITableViewDataSource

extension EventListViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 1 {
            let cell: EventListFeaturedEventsTableViewCell = tableView.dequeueCell()
            return cell
        }
        let cell: EventListBannerTableViewCell = tableView.dequeueCell()
        return cell
    }
    
}

// MARK: - UITableViewDelegate

extension EventListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Cell at: \(indexPath.row) tapped")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell: EventListSectionHeaderTableViewCell = tableView.dequeueCell()
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        guard section == 1 else { return .zero }
        return UITableView.automaticDimension
    }
    
}
