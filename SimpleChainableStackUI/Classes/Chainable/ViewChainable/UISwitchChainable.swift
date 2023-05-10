//
//  UISwitchChainable.swift
//  SimpleChainableStackUI
//
//  Created by Orisun on 2023/5/8.
//

import UIKit

public protocol UISwitchChainable : UISwitch {}

public extension UISwitchChainable {
    
    @available(iOS 5.0, *)
    @discardableResult
    func onTintColor(_ newValue: UIColor?) -> Self {
        onTintColor = newValue
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func thumbTintColor(_ newValue: UIColor?) -> Self {
        thumbTintColor = newValue
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func onImage(_ newValue: UIImage?) -> Self {
        onImage = newValue
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func offImage(_ newValue: UIImage?) -> Self {
        offImage = newValue
        return self
    }

    @available(iOS 14.0, *)
    @discardableResult
    func title(_ newValue: String?) -> Self {
        title = newValue
        return self
    }

    @available(iOS 14.0, *)
    @discardableResult
    func preferredStyle(_ newValue: UISwitch.Style) -> Self {
        preferredStyle = newValue
        return self
    }

    @discardableResult
    func isOn(_ newValue: Bool) -> Self {
        isOn = newValue
        return self
    }
}
