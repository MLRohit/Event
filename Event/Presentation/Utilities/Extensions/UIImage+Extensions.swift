//
//  UIImage+Extensions.swift
//  Event
//
//  Created by Rohit Lama on 04/10/2023.
//

import Foundation

extension UIImage {
    
    // MARK: - Functions
    
    private static func named(_ imageName: String) -> UIImage {
        guard let image = UIImage(named: imageName) else {
            assertionFailure("The \(imageName) image is not available.")
            return UIImage()
        }
        return image
    }
    
    // MARK: - Images
    
    /// NavBar Images
    static var back: UIImage? { return UIImage.named("backArrow") }
    
    /// TabBar Images
    static var tabCalender: UIImage? { return UIImage.named("calender") }
    static var tabGift: UIImage? { return UIImage.named("gift") }
    static var tabTicket: UIImage? { return UIImage.named("ticket") }
    
}
