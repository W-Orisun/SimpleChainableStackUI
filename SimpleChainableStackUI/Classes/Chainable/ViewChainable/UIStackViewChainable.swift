//
//  UIStackViewChainable.swift
//  SimpleChainableStackUI
//
//  Created by Orisun on 2023/5/8.
//

import UIKit

public protocol UIStackViewChainable : UIStackView {}

public extension UIStackViewChainable {
    
    @discardableResult
    func axis(_ newValue: NSLayoutConstraint.Axis) -> Self {
        axis = newValue
        return self
    }

    @discardableResult
    func distribution(_ newValue: UIStackView.Distribution) -> Self {
        distribution = newValue
        return self
    }

    @discardableResult
    func alignment(_ newValue: UIStackView.Alignment) -> Self {
        alignment = newValue
        return self
    }

    @discardableResult
    func spacing(_ newValue: CGFloat) -> Self {
        spacing = newValue
        return self
    }

    @discardableResult
    func isBaselineRelativeArrangement(_ newValue: Bool) -> Self {
        isBaselineRelativeArrangement = newValue
        return self
    }

    @discardableResult
    func isLayoutMarginsRelativeArrangement(_ newValue: Bool) -> Self {
        isLayoutMarginsRelativeArrangement = newValue
        return self
    }
}
