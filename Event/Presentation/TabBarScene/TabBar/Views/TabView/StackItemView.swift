//
//  StackItemView.swift
//  Event
//
//  Created by Rohit Lama on 03/10/2023.
//

import UIKit
import FLUtilities

protocol StackItemViewDelegate: AnyObject {
    func handleTap(_ view: StackItemView)
}

class StackItemView: UIView {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var highlightView: UIView!
    
    private let higlightBGColor = UIColor(hexString: "EAFAF1")
    
    static var newInstance: StackItemView {
        return Bundle.main.loadNibNamed(
            StackItemView.className(),
            owner: nil,
            options: nil
        )?.first as! StackItemView
    }
    
    weak var delegate: StackItemViewDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.addTapGesture()
    }
    
    var isSelected: Bool = false {
        willSet {
            self.updateUI(isSelected: newValue)
        }
    }
    
    var item: Any? {
        didSet {
            self.configure(self.item)
        }
    }
    
    private func configure(_ item: Any?) {
        guard let model = item as? BottomStackItem else { return }
        self.titleLabel.text = model.title
        self.imgView.image = UIImage(named: model.image)
        self.isSelected = model.isSelected
    }
    
    private func updateUI(isSelected: Bool) {
        guard let model = item as? BottomStackItem else { return }
        model.isSelected = isSelected
        let options: UIView.AnimationOptions = isSelected ? [.curveEaseIn] : [.curveEaseOut]
        
        UIView.animate(withDuration: 0.4,
                       delay: 0.0,
                       usingSpringWithDamping: 1.0,
                       initialSpringVelocity: 0.5,
                       options: options,
                       animations: {
            self.titleLabel.text = isSelected ? model.title : ""
            self.titleLabel.textColor = isSelected ? UIColor(hexString: "28B463") : .black
            let color = isSelected ? self.higlightBGColor : .white
            self.highlightView.backgroundColor = color
            (self.superview as? UIStackView)?.layoutIfNeeded()
        }, completion: nil)
    }
    
}

extension StackItemView {
    
    func addTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self,
                                                action: #selector(handleGesture(_:)))
        self.addGestureRecognizer(tapGesture)
    }
    
    @objc
    func handleGesture(_ sender: UITapGestureRecognizer) {
        self.delegate?.handleTap(self)
    }
    
}
