//
//  UITextViewChainable.swift
//  SimpleChainableStackUI
//
//  Created by Orisun on 2023/5/6.
//

import UIKit

public protocol UITextViewChainable : UITextView {}

public extension UITextViewChainable {
    
    @discardableResult
    func text(_ newValue: String!) -> Self {
        text = newValue
        return self
    }

    @discardableResult
    func font(_ newValue: UIFont?) -> Self {
        font = newValue
        return self
    }

    @discardableResult
    func textColor(_ newValue: UIColor?) -> Self {
        textColor = newValue
        return self
    }

    @discardableResult
    func textAlignment(_ newValue: NSTextAlignment) -> Self {
        textAlignment = newValue
        return self
    }

    @discardableResult
    func selectedRange(_ newValue: NSRange) -> Self {
        selectedRange = newValue
        return self
    }

    @discardableResult
    func isEditable(_ newValue: Bool) -> Self {
        isEditable = newValue
        return self
    }

    @available(iOS 7.0, *)
    @discardableResult
    func isSelectable(_ newValue: Bool) -> Self {
        isSelectable = newValue
        return self
    }

    @available(iOS 3.0, *)
    @discardableResult
    func dataDetectorTypes(_ newValue: UIDataDetectorTypes) -> Self {
        dataDetectorTypes = newValue
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func allowsEditingTextAttributes(_ newValue: Bool) -> Self {
        allowsEditingTextAttributes = newValue
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func attributedText(_ newValue: NSAttributedString!) -> Self {
        attributedText = newValue
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func typingAttributes(_ newValue: [String : Any]) -> Self {
        typingAttributes = newValue
        return self
    }

    @discardableResult
    func inputView(_ newValue: UIView?) -> Self {
        inputView = newValue
        return self
    }

    @discardableResult
    func inputAccessoryView(_ newValue: UIView?) -> Self {
        inputAccessoryView = newValue
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func clearsOnInsertion(_ newValue: Bool) -> Self {
        clearsOnInsertion = newValue
        return self
    }

    @available(iOS 7.0, *)
    @discardableResult
    func textContainerInset(_ newValue: UIEdgeInsets) -> Self {
        textContainerInset = newValue
        return self
    }

    @available(iOS 7.0, *)
    @discardableResult
    func linkTextAttributes(_ newValue: [String : Any]!) -> Self {
        linkTextAttributes = newValue
        return self
    }

    @available(iOS 13.0, *)
    @discardableResult
    func usesStandardTextScaling(_ newValue: Bool) -> Self {
        usesStandardTextScaling = newValue
        return self
    }
    
    @discardableResult
    func delegate(_ newValue: UITextViewDelegate?) -> Self {
        delegate = newValue
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    func interactionState(_ newValue: Any) -> Self {
        interactionState = newValue
        return self
    }
    
    @discardableResult
    func autocapitalizationType(_ newValue: UITextAutocapitalizationType) -> Self {
        autocapitalizationType = newValue
        return self
    }
    
    @discardableResult
    func autocorrectionType(_ newValue: UITextAutocorrectionType) -> Self {
        autocorrectionType = newValue
        return self
    }
    
    @discardableResult
    func spellCheckingType(_ newValue: UITextSpellCheckingType) -> Self {
        spellCheckingType = newValue
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func smartQuotesType(_ newValue: UITextSmartQuotesType) -> Self {
        smartQuotesType = newValue
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func smartDashesType(_ newValue: UITextSmartDashesType) -> Self {
        smartDashesType = newValue
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func smartInsertDeleteType(_ newValue: UITextSmartInsertDeleteType) -> Self {
        smartInsertDeleteType = newValue
        return self
    }
    
    @discardableResult
    func keyboardType(_ newValue: UIKeyboardType) -> Self {
        keyboardType = newValue
        return self
    }
    
    @discardableResult
    func keyboardAppearance(_ newValue: UIKeyboardAppearance) -> Self {
        keyboardAppearance = newValue
        return self
    }
    
    @discardableResult
    func returnKeyType(_ newValue: UIReturnKeyType) -> Self {
        returnKeyType = newValue
        return self
    }
    
    @discardableResult
    func enablesReturnKeyAutomatically(_ newValue: Bool) -> Self {
        enablesReturnKeyAutomatically = newValue
        return self
    }
    
    @discardableResult
    func isSecureTextEntry(_ newValue: Bool) -> Self {
        isSecureTextEntry = newValue
        return self
    }
    
    @available(iOS 10.0, *)
    @discardableResult
    func textContentType(_ newValue: UITextContentType!) -> Self {
        textContentType = newValue
        return self
    }
    
    @available(iOS 12.0, *)
    @discardableResult
    func passwordRules(_ newValue: UITextInputPasswordRules?) -> Self {
        passwordRules = newValue
        return self
    }
}
