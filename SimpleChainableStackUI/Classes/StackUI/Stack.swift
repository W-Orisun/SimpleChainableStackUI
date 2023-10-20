//
//  Stack.swift
//  SimpleChainableStackUI
//
//  Created by Orisun on 2023/5/8.
//

import UIKit

open class UIHStack : UIStackView {
    
    public convenience init(distribution: UIStackView.Distribution = .fill, alignment: UIStackView.Alignment = .fill, spacing: CGFloat = 0, @ViewArrayBuilder views: () -> [UIView]) {
        let subviews = views()
        self.init(arrangedSubviews: subviews)
        
        axis = .horizontal
        self.distribution = distribution
        self.alignment = alignment
        self.spacing = spacing
        
        for subview in subviews {
            if let spacer = subview as? Spacer {
                spacer.axis = .horizontal
            }
        }
    }
}

open class UIVStack : UIStackView {
    
    public convenience init(distribution: UIStackView.Distribution = .fill, alignment: UIStackView.Alignment = .fill, spacing: CGFloat = 0, @ViewArrayBuilder views: () -> [UIView]) {
        let subviews = views()
        self.init(arrangedSubviews: subviews)
        
        axis = .vertical
        self.distribution = distribution
        self.alignment = alignment
        self.spacing = spacing
        
        for subview in subviews {
            if let spacer = subview as? Spacer {
                spacer.axis = .vertical
            }
        }
    }
}
