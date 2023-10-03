//
//  AppDelegate.swift
//  Flix
//
//  Created by Rohit Lama on 13/09/2023.
//

import Foundation

final class Observable<Value> {
    
    // MARK: - Observer
    
    struct Observer<Value> {
        weak var observer: AnyObject?
        let block: (Value) -> Void
    }
    
    // MARK: - Properties
    
    private var observers = [Observer<Value>]()
    var value: Value {
        didSet { notifyObservers() }
    }
    
    // MARK: - Initializer
    
    init(_ value: Value) {
        self.value = value
    }
    
    // MARK: - Other Functions
    
    func observe(on observer: AnyObject, observerBlock: @escaping (Value) -> Void) {
        observers.append(Observer(observer: observer, block: observerBlock))
        observerBlock(self.value)
    }
    
    func remove(observer: AnyObject) {
        observers = observers.filter { $0.observer !== observer }
    }
    
    private func notifyObservers() {
        for observer in observers {
            observer.block(self.value)
        }
    }
    
}
