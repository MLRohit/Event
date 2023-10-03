//
//  TicketListScreen.swift
//  Event
//
//  Created by Rohit Lama on 02/10/2023.
//

import UIKit

class TicketListScreen: BaseScreen {
    
    // MARK: - Properties
    
    var onDetailsButtonTap: (() -> Void)?
    
    private lazy var openDetailsButton: UIButton = {
        let button = UIButton()
        button.setTitle("Details", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchDown)
        return button
    }()
    
    // MARK: - Life Cycle
    
    override func prepareLayout() {
        super.prepareLayout()
        setupLayout()
    }
    
    func setupLayout() {
        backgroundColor = .green
        addSubview(openDetailsButton)
        openDetailsButton.centerXInSuperview()
        openDetailsButton.centerYInSuperview()
    }
    
    @objc private func buttonTapped(_ sender: UIButton) {
        switch sender {
        case openDetailsButton:
            onDetailsButtonTap?()
        default:
            return
        }
    }
    
}
