//
//  UIView+Extensions.swift
//  Event
//
//  Created by Rohit Lama on 05/10/2023.
//

import UIKit

extension UIView {
    
    var topCurve: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            if #available(iOS 11.0, *) {
                layer.maskedCorners = CACornerMask(rawValue: 3)
            }
            layer.masksToBounds = true
        }
    }
    
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    
    func set(cornerRadius radius: CGFloat) {
        layer.cornerRadius = radius
        layer.masksToBounds = true
    }
    
    func set(border: UIColor) {
        layer.borderColor = border.cgColor
    }
    
    func set(borderWidth: CGFloat) {
        layer.borderWidth = borderWidth
    }
    
    func set(borderWidth width: CGFloat = 1, of color: UIColor) {
        set(border: color)
        set(borderWidth: width)
    }
    
    func rounded() {
        layer.masksToBounds = true
        set(cornerRadius: frame.height / 2)
    }
    
}
