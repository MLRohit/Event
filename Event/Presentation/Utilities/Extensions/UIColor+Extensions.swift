//
//  UIColor+Extensions.swift
//  Event
//
//  Created by Rohit Lama on 04/10/2023.
//

import UIKit

extension UIColor {
    
    // MARK: - Other Functions
    
    private static func named(_ colorName: String) -> UIColor {
        guard let color = UIColor(named: colorName) else {
            fatalError("The \(colorName) color is not available")
        }
        return color
    }
    
    // MARK: - App Colors
    
    static var appGreen: UIColor { return named("AppGreen") }
    static var appBackground: UIColor { return named("AppBackground") }
    static var titleLabel: UIColor { return named("TitleLabel") }
    static var subTitleLabel: UIColor { return named("SubTitleLabel") }

}
