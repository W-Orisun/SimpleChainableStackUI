//
//  AssociatedClosure.swift
//  SimpleChainableStackUI
//
//  Created by Orisun on 2023/5/8.
//

import Foundation

final class AssociatedClosure {
    
    private let closure: () -> Void

    init(target: AnyObject, key: UnsafeRawPointer, closure: @escaping () -> Void) {
        self.closure = closure
        objc_setAssociatedObject(target, key, self, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    }
    
    convenience init(target: AnyObject, closure: @escaping () -> Void) {
        self.init(target: target, key: String(arc4random()), closure: closure)
    }

    @objc func invoke() {
        closure()
    }

    static let invokeSelector = #selector(AssociatedClosure.invoke)
}
