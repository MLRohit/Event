//
//  UICollectionView+Extensions.swift
//  Event
//
//  Created by Rohit Lama on 05/10/2023.
//

import UIKit

extension UICollectionView {
    
    func dequeueCell<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: "\(T.self)", for: indexPath) as? T ?? T()
    }
    
    func dequeueSupplementaryView<T: UICollectionReusableView>(ofKind: String, for indexPath: IndexPath) -> T {
        return dequeueReusableSupplementaryView(ofKind: ofKind, withReuseIdentifier: "\(T.self)", for: indexPath) as? T ?? T()
    }
    
    func registerCell<T: UICollectionViewCell>(_ cellClass: T.Type) {
        self.register(cellClass, forCellWithReuseIdentifier: String(describing: cellClass.identifier))
    }
    
}

extension UIView {
    
    static var identifier: String {
        "\(self)"
    }
    
}
