//
//  ViewController.swift
//  SimpleChainableStackUI
//
//  Created by Orisun on 05/08/2023.
//  Copyright (c) 2023 Orisun. All rights reserved.
//

import UIKit
import SimpleChainableStackUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let label = UILabel()
            .text("SimpleChainableStackUI")
            .font(UIFont.systemFont(ofSize: 20))
            .textColor(.gray)
            .frame(CGRect(x: 0, y: 0, width: 300, height: 20))
            .textAlignment(.center)
            .set(\.shadowColor, to: .black)
        view.addSubview(label)
        label.center = view.center
    }
}

