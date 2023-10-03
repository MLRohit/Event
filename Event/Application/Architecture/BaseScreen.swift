//
//  AppDelegate.swift
//  Flix
//
//  Created by Rohit Lama on 13/09/2023.
//

import UIKit.UIView

class BaseScreen: UIView {
    
    // MARK: - Initializer
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        prepareLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        prepareLayout()
    }
    
    // MARK: - Other Functions
    
    func prepareLayout() {
        backgroundColor = .white
    }
    
}
