//
//  EventListBannerCollectionViewCell.swift
//  Event
//
//  Created by Rohit Lama on 05/10/2023.
//

import UIKit

class EventListBannerCollectionViewCell: UICollectionViewCell {
    
    // MARK: - UI Properties
    
    private lazy var bannerImageView: UIImageView = {
        $0.image = .eventBanner
        return $0
    }(UIImageView())
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        prepareLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func prepareLayout() {
        set(cornerRadius: 12)
        addSubview(bannerImageView)
        bannerImageView.fillSuperview()
    }
    
}
