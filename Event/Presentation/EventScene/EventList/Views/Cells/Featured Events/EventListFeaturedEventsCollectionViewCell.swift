//
//  EventListFeaturedEventsCollectionViewCell.swift
//  Event
//
//  Created by Rohit Lama on 06/10/2023.
//

import UIKit

class EventListFeaturedEventsCollectionViewCell: UICollectionViewCell {
    
    // MARK: - UIProperties
    
    private(set) lazy var featuredImageView: UIImageView = {
        $0.image = .eventBanner
        return $0
    }( UIImageView() )
    
    private(set) lazy var bottomContainerView: UIView = {
        return $0
    }( UIView() )
    
    private(set) lazy var titleLabel: UILabel = {
        $0.text = "PAMEX"
        $0.font = .appFont(type: .roboto(.bold), size: .heading1)
        $0.textColor = .titleLabel
        $0.numberOfLines = 1
        return $0
    }(UILabel())
    
    private(set) lazy var dateLabel: UILabel = {
        $0.text = "22 Mar, Tue"
        $0.numberOfLines = 1
        $0.font = .appFont(type: .roboto(.regular), size: .heading2)
        $0.textColor = .appGreen
        return $0
    }(UILabel())
    
    private(set) lazy var titleDateStackView: UIStackView = {
        $0.axis = .vertical
        $0.alignment = .fill
        $0.distribution = .fill
        $0.spacing = 5
        return $0
    }( UIStackView(arrangedSubviews: [titleLabel, dateLabel]) )
    
    private(set) lazy var locationLabel: UILabel = {
        $0.text = "Bouddha, Kathmandu"
        $0.font = .appFont(type: .roboto(.regular), size: .heading2)
        $0.textColor = .subTitleLabel
        $0.numberOfLines = 1
        return $0
    }(UILabel())
    
    private(set) lazy var eventDetailsStackView: UIStackView = {
        $0.axis = .vertical
        $0.alignment = .fill
        $0.distribution = .fill
        $0.spacing = 8
        return $0
    }( UIStackView(arrangedSubviews: [titleDateStackView, locationLabel]) )
    
    private(set) lazy var priceLabel: UILabel = {
        $0.text = "Rs. 100"
        $0.numberOfLines = 1
        $0.font = .appFont(type: .roboto(.regular), size: .heading2)
        $0.textColor = .subTitleLabel
        return $0
    }(UILabel())
    
    private(set) lazy var shareImageView: UIImageView = {
        $0.image = .share
        $0.constrainHeight(constant: 20)
        $0.constrainWidth(constant: 20)
        return $0
    }( UIImageView() )
    
    private(set) lazy var favoriteImageView: UIImageView = {
        $0.image = .heart
        $0.constrainHeight(constant: 20)
        $0.constrainWidth(constant: 20)
        return $0
    }( UIImageView() )
    
    private(set) lazy var shareStackView: UIStackView = {
        $0.axis = .horizontal
        $0.alignment = .center
        $0.distribution = .fill
        $0.spacing = 2
        return $0
    }( UIStackView(arrangedSubviews: [shareImageView, favoriteImageView]) )
    
    private(set) lazy var priceAndShareStackView: UIStackView = {
        $0.axis = .horizontal
        $0.alignment = .center
        $0.distribution = .fill
        $0.spacing = 4
        return $0
    }( UIStackView(arrangedSubviews: [priceLabel, shareStackView]) )
    
    private(set) lazy var detailsMainStackView: UIStackView = {
        $0.axis = .vertical
        $0.alignment = .fill
        $0.distribution = .fill
        $0.spacing = 15
        return $0
    }( UIStackView(arrangedSubviews: [eventDetailsStackView, priceAndShareStackView]) )
    
    private(set) lazy var mainStackView: UIStackView = {
        $0.axis = .vertical
        $0.alignment = .fill
        $0.distribution = .fill
        return $0
    }( UIStackView(arrangedSubviews: [featuredImageView, bottomContainerView]) )
    
    // MARK: - Life Cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        prepareLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Layouts
    
    private func prepareLayout() {
        backgroundColor = .white
        set(cornerRadius: 20)
        setupMainStackViewLayout()
        setupDetailsStackViewLayout()
    }
    
    private func setupMainStackViewLayout() {
        addSubview(mainStackView)
        mainStackView.fillSuperview()
        let imageViewHeight = (contentView.bounds.height / 2) + 10
        featuredImageView.constrainHeight(constant: imageViewHeight)
    }
    
    private func setupDetailsStackViewLayout() {
        bottomContainerView.addSubview(detailsMainStackView)
        detailsMainStackView.fillSuperview(padding: UIEdgeInsets(top: 12, left: 16, bottom: 16, right: 16))
    }
    
}
