//
//  UIControlChainable.swift
//  SimpleChainableStackUI
//
//  Created by Orisun on 2023/5/6.
//

import UIKit

public protocol UIControlChainable : UIControl {}

public extension UIControlChainable {
    
    @discardableResult
    func isEnabled(_ newValue: Bool) -> Self {
        isEnabled = newValue
        return self
    }

    @discardableResult
    func isSelected(_ newValue: Bool) -> Self {
        isSelected = newValue
        return self
    }

    @discardableResult
    func isHighlighted(_ newValue: Bool) -> Self {
        isHighlighted = newValue
        return self
    }

    @discardableResult
    func contentVerticalAlignment(_ newValue: UIControl.ContentVerticalAlignment) -> Self {
        contentVerticalAlignment = newValue
        return self
    }

    @discardableResult
    func contentHorizontalAlignment(_ newValue: UIControl.ContentHorizontalAlignment) -> Self {
        contentHorizontalAlignment = newValue
        return self
    }

    @available(iOS 14.0, *)
    @discardableResult
    func isContextMenuInteractionEnabled(_ newValue: Bool) -> Self {
        isContextMenuInteractionEnabled = newValue
        return self
    }

    @available(iOS 14.0, *)
    @discardableResult
    func showsMenuAsPrimaryAction(_ newValue: Bool) -> Self {
        showsMenuAsPrimaryAction = newValue
        return self
    }
    
    @discardableResult
    func target(_ target: Any?, action: Selector, for controlEvents: UIControl.Event) -> Self {
        addTarget(target, action: action, for: controlEvents)
        return self
    }
}
