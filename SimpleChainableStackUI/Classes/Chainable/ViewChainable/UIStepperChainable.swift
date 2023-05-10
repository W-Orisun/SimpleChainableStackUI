//
//  UIStepperChainable.swift
//  SimpleChainableStackUI
//
//  Created by Orisun on 2023/5/8.
//

import UIKit

public protocol UIStepperChainable : UIStepper {}

public extension UIStepperChainable {
    
    @discardableResult
    func isContinuous(_ newValue: Bool) -> Self {
        isContinuous = newValue
        return self
    }

    @discardableResult
    func autorepeat(_ newValue: Bool) -> Self {
        autorepeat = newValue
        return self
    }

    @discardableResult
    func wraps(_ newValue: Bool) -> Self {
        wraps = newValue
        return self
    }

    @discardableResult
    func value(_ newValue: Double) -> Self {
        value = newValue
        return self
    }

    @discardableResult
    func minimumValue(_ newValue: Double) -> Self {
        minimumValue = newValue
        return self
    }

    @discardableResult
    func maximumValue(_ newValue: Double) -> Self {
        maximumValue = newValue
        return self
    }

    @discardableResult
    func stepValue(_ newValue: Double) -> Self {
        stepValue = newValue
        return self
    }
}

public extension UIStepperChainable {
    
    @discardableResult
    func backgroundImage(_ image: UIImage?, for state: UIControl.State) -> Self {
        setBackgroundImage(image, for: state)
        return self
    }
    
    @discardableResult
    func dividerImage(_ image: UIImage?, forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State) -> Self {
        setDividerImage(image, forLeftSegmentState: leftState, rightSegmentState: rightState)
        return self
    }
    
    @discardableResult
    func incrementImage(_ image: UIImage?, for state: UIControl.State) -> Self {
        setIncrementImage(image, for: state)
        return self
    }
    
    @discardableResult
    func decrementImage(_ image: UIImage?, for state: UIControl.State) -> Self {
        setDecrementImage(image, for: state)
        return self
    }
}
