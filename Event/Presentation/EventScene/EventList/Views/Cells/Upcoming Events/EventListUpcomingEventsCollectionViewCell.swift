//
//  EventListUpcomingEventsCollectionViewCell.swift
//  Event
//
//  Created by Rohit Lama on 05/10/2023.
//

import UIKit

class EventListUpcomingEventsCollectionViewCell: UICollectionViewCell {
    
    // MARK: - UI Properties
    private(set) lazy var titleLabel: UILabel = {
        $0.text = "Thursday"
        $0.font = .appFont(type: .roboto(.bold), size: .heading1)
        $0.textColor = .appGreen
        $0.numberOfLines = 1
        return $0
    }(UILabel())
    
    private(set) lazy var subTitleLabel: UILabel = {
        $0.text = "22 Mar, Tue"
        $0.numberOfLines = 1
        $0.font = .appFont(type: .roboto(.regular), size: .heading2)
        $0.textColor = .subTitleLabel
        return $0
    }(UILabel())
    
    private(set) lazy var mainStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, subTitleLabel])
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.spacing = 5
        return stackView
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        prepareLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func prepareLayout() {
        backgroundColor = .white
        set(cornerRadius: 12)
        layoutMainStackView()
    }
    
    private func layoutMainStackView() {
        addSubview(mainStackView)
        mainStackView.fillSuperview(padding: UIEdgeInsets(top: 12, left: 12, bottom: 12, right: 12))
    }
    
}
