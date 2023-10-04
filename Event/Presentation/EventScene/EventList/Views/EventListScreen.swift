//
//  EventListScreen.swift
//  Event
//
//  Created by Rohit Lama on 21/09/2023.
//

import UIKit

class EventListScreen: BaseScreen {
    
    // MARK: - UIProperties
    
    private(set) lazy var tableView: UITableView = {
        $0.backgroundColor = .appBackground
        $0.separatorStyle = .none
        $0.showsVerticalScrollIndicator = false
        return $0
    }(UITableView(frame: bounds, style: .plain))
    
    
    // MARK: - Life Cycle
    
    override func prepareLayout() {
        super.prepareLayout()
        setupLayout()
    }
    
    func setupLayout() {
        addSubview(tableView)
        tableView.fillSuperview()
    }
    
    @objc private func buttonTapped(_ sender: UIButton) {
    }
    
}
