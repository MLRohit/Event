//
//  AppDelegate.swift
//  Flix
//
//  Created by Rohit Lama on 13/09/2023.
//

import Foundation
import UIKit.UIViewController

class BaseViewController: UIViewController {
        
    // MARK: - Properties
    
    let baseScreen: BaseScreen
    
    // MARK: - Initializer
    
    init(baseScreen: BaseScreen) {
        self.baseScreen = baseScreen
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life cycle
    
    override func loadView() {
        super.loadView()
        view = baseScreen
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    // MARK: - Other Functions
    
    func navigateBack() {
        view.endEditing(true)
        navigationController?.popViewController(animated: true)
    }
    
    deinit {
        print("deinit \(self)")
    }
    
}
