//
//  EventListSectionHeaderTableViewCell.swift
//  Event
//
//  Created by Rohit Lama on 05/10/2023.
//

import UIKit

class EventListSectionHeaderTableViewCell: UITableViewCell {
    
    // MARK: - UI Properties
    
    private lazy var featuredImageView: UIImageView = {
        $0.contentMode = .scaleAspectFill
        $0.image = .navLocation
        $0.constrainHeight(constant: 24)
        $0.constrainWidth(constant: 24)
        return $0
    }(UIImageView())
    
    private lazy var titleLabel: UILabel = {
        $0.text = "Section Header"
        $0.font = .appFont(type: .roboto(.regular), size: .heading1)
        $0.textColor = .titleLabel
        return $0
    }(UILabel())
    
    private lazy var headerStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [featuredImageView, titleLabel])
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.axis = .horizontal
        stackView.spacing = 10
        return stackView
    }()
    
    private lazy var viewAllLabel: UILabel = {
        $0.text = "View All"
        $0.font = .appFont(type: .roboto(.regular), size: .heading3)
        $0.textColor = .subTitleLabel
        $0.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        return $0
    }(UILabel())
    
    private lazy var arrowImageView: UIImageView = {
        $0.image = .arrowRight
        $0.contentMode = .scaleAspectFill
        $0.constrainHeight(constant: 20)
        $0.constrainWidth(constant: 20)
        return $0
    }(UIImageView())
    
    private lazy var viewAllStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [viewAllLabel, arrowImageView])
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.axis = .horizontal
        stackView.spacing = 5
        return stackView
    }()
    
    private lazy var mainStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [headerStackView, viewAllStackView])
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.axis = .horizontal
        stackView.spacing = 10
        return stackView
    }()
    
    
    // MARK: - Initializer
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        prepareLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func prepareLayout() {
        contentView.addSubview(mainStackView)
        mainStackView.fillSuperview(padding: UIEdgeInsets(top: .zero, left: 16, bottom: .zero, right: 16))
    }

}
