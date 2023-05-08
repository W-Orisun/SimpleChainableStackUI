//
//  Spacer.swift
//  SimpleChainableStackUI
//
//  Created by Orisun on 2023/5/8.
//

import UIKit

open class Spacer : UIView {
    
    public let spacing: CGFloat
    var axis: NSLayoutConstraint.Axis? {
        didSet {
            translatesAutoresizingMaskIntoConstraints = false
            switch axis {
            case .horizontal:
                widthAnchor.constraint(equalToConstant: spacing).isActive = true
            case .vertical:
                heightAnchor.constraint(equalToConstant: spacing).isActive = true
            default:
                break
            }
        }
    }
    
    public init(spacing: CGFloat = 8) {
        self.spacing = spacing
        super.init(frame: .zero)
        backgroundColor = .clear
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
