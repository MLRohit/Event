//
//  BottomStackItem.swift
//  Event
//
//  Created by Rohit Lama on 03/10/2023.
//

import UIKit

class BottomStackItem {
    
    var title: String
    var image: UIImage
    var isSelected: Bool
    
    init(title: String,
         image: UIImage,
         isSelected: Bool = false) {
        self.title = title
        self.image = image
        self.isSelected = isSelected
    }
    
}
