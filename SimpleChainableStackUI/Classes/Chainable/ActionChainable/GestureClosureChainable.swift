//
//  GestureClosureChainable.swift
//  SimpleChainableStackUI
//
//  Created by Orisun on 2023/5/9.
//

import UIKit

fileprivate var tapGestureChainableKey = "tapGestureChainableKey"
fileprivate var longPressGestureChainableKey = "longPressGestureChainableKey"

public protocol UIViewGestureClosureChainable : UIView {}

public extension UIViewGestureClosureChainable {
    
    @discardableResult
    func onTapGesture(action: @escaping () -> ()) -> Self {
        isUserInteractionEnabled = true
        let ac = AssociatedClosure(target: self, key: &tapGestureChainableKey, closure: action)
        
        gestureRecognizers?.removeAll { $0 is UITapGestureRecognizer }
        addGestureRecognizer(UITapGestureRecognizer(target: ac, action: AssociatedClosure.invokeSelector))
        return self
    }
    
    @discardableResult
    func onLongPressGesture(action: @escaping () -> ()) -> Self {
        isUserInteractionEnabled = true
        let ac = AssociatedClosure(target: self, key: &longPressGestureChainableKey, closure: action)
        
        gestureRecognizers?.removeAll { $0 is UILongPressGestureRecognizer }
        addGestureRecognizer(UILongPressGestureRecognizer(target: ac, action: AssociatedClosure.invokeSelector))
        return self
    }
}
