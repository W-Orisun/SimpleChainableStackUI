//
//  AAA.swift
//  SimpleChainableStackUI_Example
//
//  Created by Orisun on 2023/5/10.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import UIKit
import SimpleChainableStackUI

class MyViewController : UIViewController {
    
    @Observable var buttonTitle: String? = "Text"
    @Observable var buttonHidden = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIView()
            .onTapGesture {
                print("Hello")
            }
        UIButton()
            .onTouchUpInside {
                print("Hello")
            }
        UISwitch()
            .onValueChanged { isOn in
                print("\(isOn)")
            }
    }
    
    func updateButton() {
        buttonTitle = "New Text"
        buttonHidden.toggle()
    }
}
