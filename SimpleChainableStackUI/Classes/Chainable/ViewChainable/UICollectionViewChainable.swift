//
//  UICollectionViewChainable.swift
//  SimpleChainableStackUI
//
//  Created by Orisun on 2023/5/8.
//

import UIKit

public protocol UICollectionViewChainable : UICollectionView {}

public extension UICollectionViewChainable {
    
    @discardableResult
    func delegate(_ newValue: UICollectionViewDelegate?) -> Self {
        delegate = newValue
        return self
    }
    
    @discardableResult
    func collectionViewLayout(_ newValue: UICollectionViewLayout) -> Self {
        collectionViewLayout = newValue
        return self
    }

    @discardableResult
    func dataSource(_ newValue: UICollectionViewDataSource?) -> Self {
        dataSource = newValue
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    func prefetchDataSource(_ newValue: UICollectionViewDataSourcePrefetching?) -> Self {
        prefetchDataSource = newValue
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult
    func isPrefetchingEnabled(_ newValue: Bool) -> Self {
        isPrefetchingEnabled = newValue
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    func dragDelegate(_ newValue: UICollectionViewDragDelegate?) -> Self {
        dragDelegate = newValue
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    func dropDelegate(_ newValue: UICollectionViewDropDelegate?) -> Self {
        dropDelegate = newValue
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    func dragInteractionEnabled(_ newValue: Bool) -> Self {
        dragInteractionEnabled = newValue
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    func reorderingCadence(_ newValue: UICollectionView.ReorderingCadence) -> Self {
        reorderingCadence = newValue
        return self
    }

    @discardableResult
    func backgroundView(_ newValue: UIView?) -> Self {
        backgroundView = newValue
        return self
    }

    @discardableResult
    func allowsSelection(_ newValue: Bool) -> Self {
        allowsSelection = newValue
        return self
    }

    @discardableResult
    func allowsMultipleSelection(_ newValue: Bool) -> Self {
        allowsMultipleSelection = newValue
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    func remembersLastFocusedIndexPath(_ newValue: Bool) -> Self {
        remembersLastFocusedIndexPath = newValue
        return self
    }

    @available(iOS 14.0, *)
    @discardableResult
    func selectionFollowsFocus(_ newValue: Bool) -> Self {
        selectionFollowsFocus = newValue
        return self
    }

    @available(iOS 14.0, *)
    @discardableResult
    func isEditing(_ newValue: Bool) -> Self {
        isEditing = newValue
        return self
    }

    @available(iOS 14.0, *)
    @discardableResult
    func allowsSelectionDuringEditing(_ newValue: Bool) -> Self {
        allowsSelectionDuringEditing = newValue
        return self
    }

    @available(iOS 14.0, *)
    @discardableResult
    func allowsMultipleSelectionDuringEditing(_ newValue: Bool) -> Self {
        allowsMultipleSelectionDuringEditing = newValue
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    func allowsFocus(_ newValue: Bool) -> Self {
        allowsFocus = newValue
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    func allowsFocusDuringEditing(_ newValue: Bool) -> Self {
        allowsFocusDuringEditing = newValue
        return self
    }
}

public extension UICollectionViewChainable {
    
    @discardableResult
    func register(_ cellClass: AnyClass?, forCellWithReuseIdentifier identifier: String) -> Self {
        register(cellClass, forCellWithReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func register(_ nib: UINib?, forCellWithReuseIdentifier identifier: String) -> Self {
        register(nib, forCellWithReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func register(_ viewClass: AnyClass?, forSupplementaryViewOfKind elementKind: String, withReuseIdentifier identifier: String) -> Self {
        register(viewClass, forSupplementaryViewOfKind: elementKind, withReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func register(_ nib: UINib?, forSupplementaryViewOfKind kind: String, withReuseIdentifier identifier: String) -> Self {
        register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: identifier)
        return self
    }
}
