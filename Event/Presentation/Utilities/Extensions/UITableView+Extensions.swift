//
//  UITableView+Extensions.swift
//  Event
//
//  Created by Rohit Lama on 05/10/2023.
//

import UIKit

extension UITableView {
    
    func dequeueCell<T: UITableViewCell>() -> T {
        return dequeueReusableCell(withIdentifier: "\(T.self)") as? T ?? T()
    }

    func dequeueCell<T: UITableViewCell>(for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: "\(T.self)", for: indexPath) as? T ?? T()
    }
    
    func reloadDataWithoutScroll() {
        let offset = contentOffset
        reloadData()
        layoutIfNeeded()
        setContentOffset(offset, animated: false)
    }
    
    func registerCell<T: UITableViewCell>(_ cellClass: T.Type) {
        register(cellClass, forCellReuseIdentifier: "\(cellClass.self)")
    }

}
