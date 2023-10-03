//
//  AppDelegate.swift
//  Flix
//
//  Created by Rohit Lama on 13/09/2023.
//

import UIKit

protocol Alertable {}

extension Alertable where Self: UIViewController {
    
    // MARK: - Show Alert
    
    func showAlert(
        title: String = "",
        message: String,
        preferredStyle: UIAlertController.Style = .alert,
        completion: (() -> Void)? = nil
    ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alert, animated: true, completion: completion)
    }
    
}
