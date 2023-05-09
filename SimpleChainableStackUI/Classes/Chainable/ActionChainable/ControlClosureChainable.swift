//
//  ControlClosureChainable.swift
//  SimpleChainableStackUI
//
//  Created by Orisun on 2023/5/8.
//

import UIKit

fileprivate var touchUpInsideChainableKey = "touchUpInsideChainableKey"
fileprivate var valueChangedChainableKey = "valueChangedChainableKey"
fileprivate var editingChangedChainableKey = "editingChangedChainableKey"

public protocol UIButtonControlClosureChainable : UIButton {}
public extension UIButtonControlClosureChainable {
    
    @discardableResult
    func onTouchUpInside(action: @escaping () -> Void) -> Self {
        let ac = AssociatedClosure(target: self, key: &touchUpInsideChainableKey, closure: action)
        removeTarget(nil, action: nil, for: .touchUpInside)
        addTarget(ac, action: AssociatedClosure.invokeSelector, for: .touchUpInside)
        return self
    }
}

public protocol UISwitchControlClosureChainable : UISwitch {}
public extension UISwitchControlClosureChainable {
    
    @discardableResult
    func onValueChanged(action: @escaping (Bool) -> Void) -> Self {
        let ac = AssociatedClosure(target: self, key: &valueChangedChainableKey, closure: { [unowned self] in
            action(self.isOn)
        })
        removeTarget(nil, action: nil, for: .valueChanged)
        addTarget(ac, action: AssociatedClosure.invokeSelector, for: .valueChanged)
        return self
    }
}

public protocol UISliderControlClosureChainable : UISlider {}
public extension UISliderControlClosureChainable {
    
    @discardableResult
    func onValueChanged(action: @escaping (Float) -> Void) -> Self {
        let ac = AssociatedClosure(target: self, key: &valueChangedChainableKey, closure: { [unowned self] in
            action(self.value)
        })
        removeTarget(nil, action: nil, for: .valueChanged)
        addTarget(ac, action: AssociatedClosure.invokeSelector, for: .valueChanged)
        return self
    }
}

public protocol UIStepperControlClosureChainable : UIStepper {}
public extension UIStepperControlClosureChainable {
    
    @discardableResult
    func onValueChanged(action: @escaping (Double) -> Void) -> Self {
        let ac = AssociatedClosure(target: self, key: &valueChangedChainableKey, closure: { [unowned self] in
            action(self.value)
        })
        removeTarget(nil, action: nil, for: .valueChanged)
        addTarget(ac, action: AssociatedClosure.invokeSelector, for: .valueChanged)
        return self
    }
}

public protocol UITextFieldControlClosureChainable : UITextField {}
public extension UITextFieldControlClosureChainable {
    
    @discardableResult
    func onEditingChanged(action: @escaping (String?) -> Void) -> Self {
        let ac = AssociatedClosure(target: self, key: &valueChangedChainableKey, closure: { [unowned self] in
            action(self.text)
        })
        removeTarget(nil, action: nil, for: .editingChanged)
        addTarget(ac, action: AssociatedClosure.invokeSelector, for: .editingChanged)
        return self
    }
}
