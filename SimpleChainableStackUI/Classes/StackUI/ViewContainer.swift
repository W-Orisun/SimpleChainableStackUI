//
//  ViewContainer.swift
//  SimpleChainableStackUI
//
//  Created by Orisun on 2023/5/8.
//

import UIKit

open class ViewContainer : UIView {

    public init(padding: UIEdgeInsets = .zero, child: () -> UIView) {
        super.init(frame: .zero)
        
        let subview = child()
        addSubview(subview)
        
        subview.translatesAutoresizingMaskIntoConstraints = false
        subview.topAnchor.constraint(equalTo: self.topAnchor, constant: padding.top).isActive = true
        subview.leftAnchor.constraint(equalTo: self.leftAnchor, constant: padding.left).isActive = true
        subview.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -padding.bottom).isActive = true
        subview.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -padding.right).isActive = true
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
