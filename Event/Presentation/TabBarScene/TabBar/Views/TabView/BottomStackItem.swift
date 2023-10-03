//
//  BottomStackItem.swift
//  Event
//
//  Created by Rohit Lama on 03/10/2023.
//

import Foundation

class BottomStackItem {
    
    var title: String
    var image: String
    var isSelected: Bool
    
    init(title: String,
         image: String,
         isSelected: Bool = false) {
        self.title = title
        self.image = image
        self.isSelected = isSelected
    }
    
}
