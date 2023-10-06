//
//  EventListFeaturedEventsTableViewCell.swift
//  Event
//
//  Created by Rohit Lama on 06/10/2023.
//

import UIKit

class EventListFeaturedEventsTableViewCell: UITableViewCell {
    
    // MARK: - UIProperties

    private(set) lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 12
        layout.minimumInteritemSpacing = .zero
        let collectionView = UICollectionView(frame: frame, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.heightAnchor.constraint(equalToConstant: 294).isActive = true
        collectionView.registerCell(EventListFeaturedEventsCollectionViewCell.self)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    // MARK: - Life Cycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        prepareLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Layouts
    
    private func prepareLayout() {
        backgroundColor = .clear
        contentView.addSubview(collectionView)
        collectionView.fillSuperview()
        setupCollectionView()
    }
    
    private func setupCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
}

// MARK: - UICollectionViewDataSource

extension EventListFeaturedEventsTableViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: EventListFeaturedEventsCollectionViewCell = collectionView.dequeueCell(for: indexPath)
        return cell
    }
    
}

// MARK: - UICollectionViewDelegate

extension EventListFeaturedEventsTableViewCell: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
    
}

// MARK: - UICollectionViewDelegateFlowLayout

extension EventListFeaturedEventsTableViewCell: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width / 2
        return Constants.getSize(width, collectionView.frame.height)
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
    static let bottomPadding: CGFloat = 12
    static let horizontalPadding = leftPadding + rightPadding
    static let verticalPadding = topPadding + bottomPadding
    static let inset = UIEdgeInsets(top: topPadding,
                                    left: leftPadding,
                                    bottom: bottomPadding,
                                    right: rightPadding)
    
    static func getSize(_ width: CGFloat, _ height: CGFloat) -> CGSize {
        let calculatedWidth = width
        let calculatedHeight = height - verticalPadding
        return CGSize(width: calculatedWidth, height: calculatedHeight)
    }
    
}
