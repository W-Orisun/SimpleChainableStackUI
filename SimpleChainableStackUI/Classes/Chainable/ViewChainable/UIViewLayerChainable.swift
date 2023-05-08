//
//  UIViewLayerChainable.swift
//  SimpleChainableStackUI
//
//  Created by Orisun on 2023/5/8.
//

import UIKit

public protocol UIViewLayerChainable : UIView {}

public extension UIViewLayerChainable {
    
    @discardableResult
    func cornerRadius(_ newValue: CGFloat) -> Self {
        layer.cornerRadius = newValue
        return self
    }
    
    @discardableResult
    func masksToBounds(_ newValue: Bool) -> Self {
        layer.masksToBounds = newValue
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func maskedCorners(_ newValue: CACornerMask) -> Self {
        layer.maskedCorners = newValue
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    func cornerCurve(_ newValue: CALayerCornerCurve) -> Self {
        layer.cornerCurve = newValue
        return self
    }
    
    @discardableResult
    func borderWidth(_ newValue: CGFloat) -> Self {
        layer.borderWidth = newValue
        return self
    }
    
    @discardableResult
    func borderColor(_ newValue: UIColor?) -> Self {
        layer.borderColor = newValue?.cgColor
        return self
    }
    
    @discardableResult
    func shadowColor(_ newValue: UIColor?) -> Self {
        layer.shadowColor = newValue?.cgColor
        return self
    }
    
    @discardableResult
    func shadowOpacity(_ newValue: Float) -> Self {
        layer.shadowOpacity = newValue
        return self
    }
    
    @discardableResult
    func shadowOffset(_ newValue: CGSize) -> Self {
        layer.shadowOffset = newValue
        return self
    }
    
    @discardableResult
    func shadowRadius(_ newValue: CGFloat) -> Self {
        layer.shadowRadius = newValue
        return self
    }
    
    @discardableResult
    func shadowPath(_ newValue: CGPath?) -> Self {
        layer.shadowPath = newValue
        return self
    }
}
