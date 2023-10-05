//
//  UIImage+Extensions.swift
//  Event
//
//  Created by Rohit Lama on 04/10/2023.
//

import UIKit

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
    static var back: UIImage? { return UIImage(systemName: "arrow.backward") }
    static var navCalender: UIImage? { return UIImage(systemName: "calendar") }
    static var navLocation: UIImage? { return UIImage(systemName: "location.north.circle.fill") }

    /// TabBar Images
    static var tabCalender: UIImage { return UIImage.named("calendar") }
    static var tabGift: UIImage { return UIImage.named("gift") }
    static var tabTicket: UIImage { return UIImage.named("ticket") }
    
    /// Static Images For Event
    static var eventBanner: UIImage { return UIImage.named("eventBanner") }
    static var arrowRight: UIImage? { return UIImage(systemName: "arrow.right") }


}
