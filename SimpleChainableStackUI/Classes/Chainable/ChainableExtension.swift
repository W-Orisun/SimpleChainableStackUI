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
extension UILabel : UILabelChainable {}
extension UIButton : UIButtonChainable, UIButtonControlClosureChainable {}
extension UIControl : UIControlChainable {}
extension UITableView : UITableViewChainable {}
extension UITextField : UITextFieldChainable, UITextFieldControlClosureChainable {}
extension UITextView : UITextViewChainable {}
extension UICollectionView : UICollectionViewChainable {}
extension UIScrollView : UIScrollViewChainable {}
extension UIStackView : UIStackViewChainable {}
extension UISwitch : UISwitchChainable, UISwitchControlClosureChainable {}
extension UISlider : UISliderChainable, UISliderControlClosureChainable {}
extension UIStepper : UIStepperChainable, UIStepperControlClosureChainable {}
extension UIPageControl : UIPageControlChainable {}
