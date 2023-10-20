//
//  ViewObservableChainable.swift
//  SimpleChainableStackUI
//
//  Created by Orisun on 2023/5/9.
//

import UIKit

public extension UIViewChainable {
    
    @discardableResult
    func observableHidden(_ wrapper: CSObservableWrapper<Bool>) -> Self {
        wrapper.addObserveClosure { [weak self] isHidden in
            self?.isHidden = isHidden
        }
        return self
    }
}


public extension UILabelChainable {
    
    @discardableResult
    func observableText(_ wrapper: CSObservableWrapper<String?>) -> Self {
        wrapper.addObserveClosure { [weak self] text in
            self?.text = text
        }
        return self
    }
    
    @discardableResult
    func observableAttributedText(_ wrapper: CSObservableWrapper<NSAttributedString?>) -> Self {
        wrapper.addObserveClosure { [weak self] attributedText in
            self?.attributedText = attributedText
        }
        return self
    }
}


public extension UIButtonChainable {
    
    @discardableResult
    func observableTitle(_ wrapper: CSObservableWrapper<String?>, for state: UIControl.State) -> Self {
        wrapper.addObserveClosure { [weak self] title in
            self?.setTitle(title, for: state)
        }
        return self
    }
    
    @discardableResult
    func observableImage(_ wrapper: CSObservableWrapper<UIImage?>, for state: UIControl.State) -> Self {
        wrapper.addObserveClosure { [weak self] image in
            self?.setImage(image, for: state)
        }
        return self
    }
    
    @discardableResult
    func observableBackgroundImage(_ wrapper: CSObservableWrapper<UIImage?>, for state: UIControl.State) -> Self {
        wrapper.addObserveClosure { [weak self] image in
            self?.setBackgroundImage(image, for: state)
        }
        return self
    }
}


public extension UIImageViewChainable {
    
    @discardableResult
    func observableImage(_ wrapper: CSObservableWrapper<UIImage?>) -> Self {
        wrapper.addObserveClosure { [weak self] image in
            self?.image = image
        }
        return self
    }
}


public extension UITextFieldChainable {
    
    @discardableResult
    func observableText(_ wrapper: CSObservableWrapper<String?>) -> Self {
        wrapper.addObserveClosure { [weak self] text in
            self?.text = text
        }
        return self
    }
    
    @discardableResult
    func observableAttributedText(_ wrapper: CSObservableWrapper<NSAttributedString?>) -> Self {
        wrapper.addObserveClosure { [weak self] attributedText in
            self?.attributedText = attributedText
        }
        return self
    }
    
    @discardableResult
    func observablePlaceholder(_ wrapper: CSObservableWrapper<String?>) -> Self {
        wrapper.addObserveClosure { [weak self] placeholder in
            self?.placeholder = placeholder
        }
        return self
    }
    
    @discardableResult
    func observableAttributedPlaceholder(_ wrapper: CSObservableWrapper<NSAttributedString?>) -> Self {
        wrapper.addObserveClosure { [weak self] attributedPlaceholder in
            self?.attributedPlaceholder = attributedPlaceholder
        }
        return self
    }
}


public extension UISwitchChainable {
    
    @discardableResult
    func observableOn(_ wrapper: CSObservableWrapper<Bool>) -> Self {
        wrapper.addObserveClosure { [weak self] isOn in
            self?.isOn = isOn
        }
        return self
    }
}


public extension UIPageControlChainable {
    
    @discardableResult
    func observableCurrentPage(_ wrapper: CSObservableWrapper<Int>) -> Self {
        wrapper.addObserveClosure { [weak self] currentPage in
            self?.currentPage = currentPage
        }
        return self
    }
}


public extension UISliderChainable {
    
    @discardableResult
    func observableValue(_ wrapper: CSObservableWrapper<Float>) -> Self {
        wrapper.addObserveClosure { [weak self] value in
            self?.value = value
        }
        return self
    }
}


public extension UIStepperChainable {
    
    @discardableResult
    func observableValue(_ wrapper: CSObservableWrapper<Double>) -> Self {
        wrapper.addObserveClosure { [weak self] value in
            self?.value = value
        }
        return self
    }
}
