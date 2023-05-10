//
//  UIButtonChainable.swift
//  SimpleChainableStackUI
//
//  Created by Orisun on 2023/5/6.
//

import UIKit

public protocol UIButtonChainable : UIButton {}

public extension UIButtonChainable {
    
    @discardableResult
    func contentEdgeInsets(_ newValue: UIEdgeInsets) -> Self {
        contentEdgeInsets = newValue
        return self
    }

    @discardableResult
    func titleEdgeInsets(_ newValue: UIEdgeInsets) -> Self {
        titleEdgeInsets = newValue
        return self
    }

    @discardableResult
    func reversesTitleShadowWhenHighlighted(_ newValue: Bool) -> Self {
        reversesTitleShadowWhenHighlighted = newValue
        return self
    }

    @discardableResult
    func imageEdgeInsets(_ newValue: UIEdgeInsets) -> Self {
        imageEdgeInsets = newValue
        return self
    }

    @discardableResult
    func adjustsImageWhenHighlighted(_ newValue: Bool) -> Self {
        adjustsImageWhenHighlighted = newValue
        return self
    }

    @discardableResult
    func adjustsImageWhenDisabled(_ newValue: Bool) -> Self {
        adjustsImageWhenDisabled = newValue
        return self
    }

    @discardableResult
    func showsTouchWhenHighlighted(_ newValue: Bool) -> Self {
        showsTouchWhenHighlighted = newValue
        return self
    }

    @available(iOS 14.0, *)
    @discardableResult
    func role(_ newValue: UIButton.Role) -> Self {
        role = newValue
        return self
    }

    @available(iOS 13.4, *)
    @discardableResult
    func isPointerInteractionEnabled(_ newValue: Bool) -> Self {
        isPointerInteractionEnabled = newValue
        return self
    }
    
    @available(iOS 13.4, *)
    @discardableResult
    func pointerStyleProvider(_ newValue: UIButton.PointerStyleProvider?) -> Self {
        pointerStyleProvider = newValue
        return self
    }

    @available(iOS 14.0, *)
    @discardableResult
    func menu(_ newValue: UIMenu?) -> Self {
        menu = newValue
        return self
    }
}

public extension UIButtonChainable {
    
    @discardableResult
    func font(_ newValue: UIFont!) -> Self {
        titleLabel?.font = newValue
        return self
    }
    
    @discardableResult
    func title(_ title: String?, for state: UIControl.State) -> Self {
        setTitle(title, for: state)
        return self
    }
    
    @discardableResult
    func titleColor(_ color: UIColor?, for state: UIControl.State) -> Self {
        setTitleColor(color, for: state)
        return self
    }
    
    @discardableResult
    func titleShadowColor(_ color: UIColor?, for state: UIControl.State) -> Self {
        setTitleShadowColor(color, for: state)
        return self
    }
    
    @discardableResult
    func image(_ image: UIImage?, for state: UIControl.State) -> Self {
        setImage(image, for: state)
        return self
    }
    
    @discardableResult
    func backgroundImage(_ image: UIImage?, for state: UIControl.State) -> Self {
        setBackgroundImage(image, for: state)
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    func preferredSymbolConfiguration(_ configuration: UIImage.SymbolConfiguration?, forImageIn state: UIControl.State) -> Self {
        setPreferredSymbolConfiguration(configuration, forImageIn: state)
        return self
    }
    
    @discardableResult
    func attributedTitle(_ title: NSAttributedString?, for state: UIControl.State) -> Self {
        setAttributedTitle(title, for: state)
        return self
    }
}
