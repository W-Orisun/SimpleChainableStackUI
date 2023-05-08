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
        
        let container = ViewContainer {
            VStack {
                UILabel()
                    .text("SimpleChainableStackUI")
                    .font(UIFont.systemFont(ofSize: 20))
                    .textColor(.gray)
                    .textAlignment(.center)
                    .set(\.shadowColor, to: .black)
                Spacer()
                HStack(distribution: .fillEqually) {
                    UILabel().text("simple").textAlignment(.center)
                    UILabel().text("chainable").textAlignment(.center)
                    UILabel().text("stack").textAlignment(.center)
                }
            }
        }.frame(CGRect(x: 0, y: 0, width: 240, height: 48))
        
        view.addSubview(container)
        container.center = view.center
    }
}

