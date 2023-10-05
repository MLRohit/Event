//
//  EventListBannerTableViewCell.swift
//  Event
//
//  Created by Rohit Lama on 05/10/2023.
//

import UIKit

class EventListBannerTableViewCell: UITableViewCell {
        
    // MARK: - UI Properties
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 12
        layout.minimumInteritemSpacing = .zero
        let collectionView = UICollectionView(frame: frame, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.heightAnchor.constraint(equalToConstant: 180).isActive = true
        collectionView.registerCell(EventListBannerCollectionViewCell.self)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    private lazy var pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.currentPage = 0
        pageControl.numberOfPages = 3
        pageControl.pageIndicatorTintColor = UIColor(hexString: "b7c3d9")
        pageControl.currentPageIndicatorTintColor = .appGreen
        return pageControl
    }()
    
    private lazy var mainStackView: UIStackView = {
        $0.axis = .vertical
        $0.alignment = .fill
        $0.distribution = .fill
        return $0
    }(UIStackView(arrangedSubviews: [collectionView, pageControl]))
    
    // MARK: - Initializers
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        prepareLayout()
        setupCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func prepareLayout() {
        backgroundColor = .clear
        contentView.addSubview(mainStackView)
        mainStackView.fillSuperview()
    }
    
    private func setupCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
    }

}

// MARK: - UICollectionViewDataSource

extension EventListBannerTableViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: EventListBannerCollectionViewCell = collectionView.dequeueCell(for: indexPath)
        return cell
    }
    
}

// MARK: - UICollectionViewDelegate

extension EventListBannerTableViewCell: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageControl.currentPage = getCurrentPage(scrollView)
    }
    
    private func getCurrentPage(_ scrollView: UIScrollView) -> Int {
        Int(scrollView.contentOffset.x) / Int(scrollView.frame.width - Constants.horizontalPadding)
    }
    
}

// MARK: - UICollectionViewDelegateFlowLayout

extension EventListBannerTableViewCell: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        Constants.getSize(UIScreen.main.bounds.width, collectionView.frame.height)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        Constants.inset
    }
    
}

// MARK: - Constants

/// Constants for collection view layouts
fileprivate struct Constants {
    
    static let leftPadding: CGFloat = 16
    static let rightPadding: CGFloat = 16
    static let topPadding: CGFloat = 12
    static let bottomPadding: CGFloat = .zero
    static let horizontalPadding = leftPadding + rightPadding
    static let verticalPadding = topPadding + bottomPadding
    static let inset = UIEdgeInsets(top: topPadding,
                                    left: leftPadding,
                                    bottom: bottomPadding,
                                    right: rightPadding)
    
    static func getSize(_ width: CGFloat, _ height: CGFloat) -> CGSize {
        let calculatedWidth = width - horizontalPadding
        let calculatedHeight = height - verticalPadding
        return CGSize(width: calculatedWidth, height: calculatedHeight)
    }
    
}
