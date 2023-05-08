//
//  Chainable.swift
//  SimpleChainableStackUI
//
//  Created by Orisun on 2023/5/6.
//

import Foundation

public protocol Chainable {}

public extension Chainable {
    
    @inlinable
    @discardableResult
    func set<Value>(_ keyPath: ReferenceWritableKeyPath<Self, Value>, to value: Value) -> Self {
        self[keyPath: keyPath] = value
        return self
    }
    
    @inlinable
    @discardableResult
    func apply(_ transform: (inout Self) -> Void) -> Self {
        var tmp = self
        transform(&tmp)
        return tmp
    }
    
    @discardableResult
    func assign<T>(to variable: inout T) -> Self {
        if let casted = self as? T {
            variable = casted
        } else {
            preconditionFailure("Can't cast \(Self.self) to \(T.self)")
        }
        return self
    }
}
