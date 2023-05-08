//
//  ChainableExtension.swift
//  SimpleChainableStackUI
//
//  Created by Orisun on 2023/5/6.
//

import Foundation
import UIKit

extension Optional : Chainable where Wrapped: Chainable {}
extension UIView : Chainable {}

extension UIView : UIViewChainable, UIViewLayerChainable {}
extension UILabel : UILabelChainable {}
extension UIButton : UIButtonChainable {}
extension UIControl : UIControlChainable {}
extension UITableView : UITableViewChainable {}
extension UITextField : UITextFieldChainable {}
extension UITextView : UITextViewChainable {}
extension UICollectionView : UICollectionViewChainable {}
extension UIScrollView : UIScrollViewChainable {}
extension UIStackView : UIStackViewChainable {}
extension UISwitch : UISwitchChainable {}
extension UISlider : UISliderChainable {}
extension UIStepper : UIStepperChainable {}
extension UIPageControl : UIPageControlChainable {}
