//
//  Observable.swift
//  SimpleChainableStackUI
//
//  Created by Orisun on 2023/5/9.
//

import Foundation

public class ObservableWrapper<T> {
    
    public var value: T? {
        didSet {
            guard let newValue = value else { return }
            for closure in observeClosures {
                closure(newValue)
            }
        }
    }
    public var observeClosures: [(T) -> Void] = []
    
    public func addObserveClosure(_ closure: @escaping (T) -> Void) {
        observeClosures.append(closure)
        if let existing = value {
            closure(existing)
        }
    }
}


@propertyWrapper
public struct Observable<T> {
    
    private let wrapper = ObservableWrapper<T>()
    
    public var projectedValue: ObservableWrapper<T> { wrapper }
    public var wrappedValue: T {
        didSet {
            wrapper.value = wrappedValue
        }
    }
    
    public init(wrappedValue: T) {
        self.wrappedValue = wrappedValue
        wrapper.value = wrappedValue
    }
}
