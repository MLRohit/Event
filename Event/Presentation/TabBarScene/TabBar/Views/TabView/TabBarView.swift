//
//  TabBarView.swift
//  Event
//
//  Created by Rohit Lama on 03/10/2023.
//

import UIKit

class TabBarView: UIView {
        
    // MARK: - UIProperties
    
    private lazy var stackView: UIStackView = {
        $0.axis = .horizontal
        $0.alignment = .fill
        $0.distribution = .equalSpacing
        $0.spacing = 2
        return $0
    }(UIStackView())
    
    // MARK: - Properties
    
    private var currentIndex = 0 {
        didSet {
            onTabSelect?(currentIndex)
        }
    }
    
    private lazy var tabs: [StackItemView] = {
        var items = [StackItemView]()
        for _ in 0..<3 {
            items.append(StackItemView.newInstance)
        }
        return items
    }()
    
    private lazy var tabModels: [BottomStackItem] = {
        return [
            BottomStackItem(title: "Event", image: .tabCalender),
            BottomStackItem(title: "Ticket", image: .tabTicket),
            BottomStackItem(title: "Gift", image: .tabGift),
        ]
    }()
    
    var onTabSelect: ((_ index: Int) -> Void)?
    
    //MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        prepareLayout()
        setupTabs()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        prepareLayout()
        setupTabs()
    }
    
    // MARK: - Layouts
    
    private func prepareLayout() {
        addSubview(stackView)
        stackView.fillSuperview(padding: UIEdgeInsets(top: .zero, left: 45, bottom: .zero, right: 45))
    }
    
    func setupTabs() {
        for (index, model) in self.tabModels.enumerated() {
            let tabView = self.tabs[index]
            model.isSelected = index == 0
            tabView.item = model
            tabView.delegate = self
            self.stackView.addArrangedSubview(tabView)
        }
    }
    
}

// MARK: - StackItemViewDelegate

extension TabBarView: StackItemViewDelegate {
    
    func handleTap(_ view: StackItemView) {
        self.tabs[self.currentIndex].isSelected = false
        view.isSelected = true
        self.currentIndex = self.tabs.firstIndex(where: { $0 === view }) ?? 0
    }
    
}
