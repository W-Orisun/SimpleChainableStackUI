//
//  UIImageViewChainable.swift
//  SimpleChainableStackUI
//
//  Created by Orisun on 2023/5/6.
//

import UIKit

public protocol UIImageViewChainable : UIImageView {}

public extension UIImageViewChainable {
    
    @discardableResult
    func image(_ newValue: UIImage?) -> Self {
        image = newValue
        return self
    }

    @available(iOS 3.0, *)
    @discardableResult
    func highlightedImage(_ newValue: UIImage?) -> Self {
        highlightedImage = newValue
        return self
    }

    @available(iOS 13.0, *)
    @discardableResult
    func preferredSymbolConfiguration(_ newValue: UIImage.SymbolConfiguration?) -> Self {
        preferredSymbolConfiguration = newValue
        return self
    }

    @available(iOS 3.0, *)
    @discardableResult
    func isHighlighted(_ newValue: Bool) -> Self {
        isHighlighted = newValue
        return self
    }

    @discardableResult
    func animationImages(_ newValue: [UIImage]?) -> Self {
        animationImages = newValue
        return self
    }

    @available(iOS 3.0, *)
    @discardableResult
    func highlightedAnimationImages(_ newValue: [UIImage]?) -> Self {
        highlightedAnimationImages = newValue
        return self
    }

    @discardableResult
    func animationDuration(_ newValue: TimeInterval) -> Self {
        animationDuration = newValue
        return self
    }

    @discardableResult
    func animationRepeatCount(_ newValue: Int) -> Self {
        animationRepeatCount = newValue
        return self
    }
}

public extension UIImageViewChainable {
    
//    func image(_ publisher: Publisher<UIImage?>) -> Self {
//        publisher.addSubscriber {[weak self] image in
//            self?.image = image
//        }
//        return self
//    }
//    func image(_ publisher: Publisher<UIImage>) -> Self {
//        publisher.addSubscriber {[weak self] image in
//            self?.image = image
//        }
//        return self
//    }
}
