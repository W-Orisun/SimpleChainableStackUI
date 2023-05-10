//
//  UIPageControlClosureChainable.swift
//  SimpleChainableStackUI
//
//  Created by Orisun on 2023/5/8.
//

import UIKit

public protocol UIPageControlChainable : UIPageControl {}

public extension UIPageControlChainable {
    
    @discardableResult
    func numberOfPages(_ newValue: Int) -> Self {
        numberOfPages = newValue
        return self
    }

    @discardableResult
    func currentPage(_ newValue: Int) -> Self {
        currentPage = newValue
        return self
    }

    @discardableResult
    func hidesForSinglePage(_ newValue: Bool) -> Self {
        hidesForSinglePage = newValue
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func pageIndicatorTintColor(_ newValue: UIColor?) -> Self {
        pageIndicatorTintColor = newValue
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func currentPageIndicatorTintColor(_ newValue: UIColor?) -> Self {
        currentPageIndicatorTintColor = newValue
        return self
    }

    @available(iOS 14.0, *)
    @discardableResult
    func backgroundStyle(_ newValue: UIPageControl.BackgroundStyle) -> Self {
        backgroundStyle = newValue
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult
    func direction(_ newValue: UIPageControl.Direction) -> Self {
        direction = newValue
        return self
    }

    @available(iOS 14.0, *)
    @discardableResult
    func allowsContinuousInteraction(_ newValue: Bool) -> Self {
        allowsContinuousInteraction = newValue
        return self
    }

    @available(iOS 14.0, *)
    @discardableResult
    func preferredIndicatorImage(_ newValue: UIImage?) -> Self {
        preferredIndicatorImage = newValue
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult
    func preferredCurrentPageIndicatorImage(_ newValue: UIImage?) -> Self {
        preferredCurrentPageIndicatorImage = newValue
        return self
    }

    @available(iOS, introduced: 2.0, deprecated: 14.0, message: "updateCurrentPageDisplay no longer does anything reasonable with the new interaction mode.")
    @discardableResult
    func defersCurrentPageDisplay(_ newValue: Bool) -> Self {
        defersCurrentPageDisplay = newValue
        return self
    }
}

public extension UIPageControlChainable {
    
    @available(iOS 14.0, *)
    @discardableResult
    func indicatorImage(_ image: UIImage?, forPage page: Int) -> Self {
        setIndicatorImage(image, forPage: page)
        return self
    }
}
