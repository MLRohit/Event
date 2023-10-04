//
//  Font.swift
//  Event
//
//  Created by Rohit Lama on 04/10/2023.
//

import UIKit

enum FontSize: CGFloat {
    case heading1 = 16,
         heading2 = 14,
         heading3 = 12,
         heading4 = 10
}

enum AppFontWeight {
    case regular,
         bold,
         medium
}

enum FontType {
    case roboto(AppFontWeight)
    
    var name: String {
        switch self {
        case .roboto(let weight):
            switch weight {
            case .regular: return "Roboto-Regular"
            case .medium: return "Roboto-Medium"
            case .bold: return "Roboto-Bold"
            default: return "Roboto-Regular"
            }
        }
    }
}

extension UIFont {
    
    static func appFont(type: FontType, size: FontSize = .heading1) -> UIFont {
        guard let font = UIFont(name: type.name, size: size.rawValue) else {
            fatalError("\(type.name) is not available in the system")
        }
        return font
    }
    
}
