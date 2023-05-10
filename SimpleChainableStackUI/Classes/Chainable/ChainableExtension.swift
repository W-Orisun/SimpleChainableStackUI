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

extension UIView : UIViewChainable, UIViewLayerChainable, UIViewGestureClosureChainable {}
extension UIControl : UIControlChainable {}
extension UILabel : UILabelChainable {}
extension UIButton : UIButtonChainable, UIButtonControlClosureChainable {}
extension UIStackView : UIStackViewChainable {}
extension UIScrollView : UIScrollViewChainable {}
extension UITableView : UITableViewChainable {}
extension UICollectionView : UICollectionViewChainable {}
extension UITextField : UITextFieldChainable, UITextFieldControlClosureChainable {}
extension UITextView : UITextViewChainable {}
extension UISwitch : UISwitchChainable, UISwitchControlClosureChainable {}
extension UISlider : UISliderChainable, UISliderControlClosureChainable {}
extension UIStepper : UIStepperChainable, UIStepperControlClosureChainable {}
extension UIPageControl : UIPageControlChainable {}
