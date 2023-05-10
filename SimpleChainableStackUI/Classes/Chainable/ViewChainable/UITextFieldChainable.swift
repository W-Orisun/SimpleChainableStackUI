//
//  UITextFieldChainable.swift
//  SimpleChainableStackUI
//
//  Created by Orisun on 2023/5/6.
//

import UIKit

public protocol UITextFieldChainable : UITextField {}

public extension UITextFieldChainable {
    
    @discardableResult
    func text(_ newValue: String?) -> Self {
        text = newValue
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func attributedText(_ newValue: NSAttributedString?) -> Self {
        attributedText = newValue
        return self
    }

    @discardableResult
    func textColor(_ newValue: UIColor?) -> Self {
        textColor = newValue
        return self
    }

    @discardableResult
    func font(_ newValue: UIFont?) -> Self {
        font = newValue
        return self
    }

    @discardableResult
    func textAlignment(_ newValue: NSTextAlignment) -> Self {
        textAlignment = newValue
        return self
    }

    @discardableResult
    func borderStyle(_ newValue: UITextField.BorderStyle) -> Self {
        borderStyle = newValue
        return self
    }

    @available(iOS 7.0, *)
    @discardableResult
    func defaultTextAttributes(_ newValue: [String : Any]) -> Self {
        defaultTextAttributes = newValue
        return self
    }

    @discardableResult
    func placeholder(_ newValue: String?) -> Self {
        placeholder = newValue
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func attributedPlaceholder(_ newValue: NSAttributedString?) -> Self {
        attributedPlaceholder = newValue
        return self
    }

    @discardableResult
    func clearsOnBeginEditing(_ newValue: Bool) -> Self {
        clearsOnBeginEditing = newValue
        return self
    }

    @discardableResult
    func adjustsFontSizeToFitWidth(_ newValue: Bool) -> Self {
        adjustsFontSizeToFitWidth = newValue
        return self
    }

    @discardableResult
    func minimumFontSize(_ newValue: CGFloat) -> Self {
        minimumFontSize = newValue
        return self
    }

    @discardableResult
    func delegate(_ newValue: UITextFieldDelegate?) -> Self {
        delegate = newValue
        return self
    }

    @discardableResult
    func background(_ newValue: UIImage?) -> Self {
        background = newValue
        return self
    }

    @discardableResult
    func disabledBackground(_ newValue: UIImage?) -> Self {
        disabledBackground = newValue
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
    func typingAttributes(_ newValue: [String : Any]?) -> Self {
        typingAttributes = newValue
        return self
    }

    @discardableResult
    func clearButtonMode(_ newValue: UITextField.ViewMode) -> Self {
        clearButtonMode = newValue
        return self
    }

    @discardableResult
    func leftView(_ newValue: UIView?) -> Self {
        leftView = newValue
        return self
    }

    @discardableResult
    func leftViewMode(_ newValue: UITextField.ViewMode) -> Self {
        leftViewMode = newValue
        return self
    }

    @discardableResult
    func rightView(_ newValue: UIView?) -> Self {
        rightView = newValue
        return self
    }

    @discardableResult
    func rightViewMode(_ newValue: UITextField.ViewMode) -> Self {
        rightViewMode = newValue
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
