//
//  EventListUpcomingEventsTableViewCell.swift
//  Event
//
//  Created by Rohit Lama on 05/10/2023.
//

import UIKit

class EventListUpcomingEventsTableViewCell: UITableViewCell {
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 12
        layout.minimumInteritemSpacing = .zero
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        let collectionView = UICollectionView(frame: frame, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.heightAnchor.constraint(equalToConstant: 74).isActive = true
        collectionView.registerCell(EventListUpcomingEventsCollectionViewCell.self)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .clear
        return collectionView
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

extension EventListUpcomingEventsTableViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: EventListUpcomingEventsCollectionViewCell = collectionView.dequeueCell(for: indexPath)
        return cell
    }
    
}

// MARK: - UICollectionViewDelegate

extension EventListUpcomingEventsTableViewCell: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
    
}

// MARK: - UICollectionViewDelegateFlowLayout

extension EventListUpcomingEventsTableViewCell: UICollectionViewDelegateFlowLayout {

//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
////        Constants.getSize(, collectionView.frame.height)
//        CGSize(width: 100, height: 50)
////        UICollectionViewFlowLayout.automaticSize
//    }

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
}
