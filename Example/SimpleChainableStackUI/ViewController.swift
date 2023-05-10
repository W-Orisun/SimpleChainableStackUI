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
    
    @Observable var titleLabel: UILabel!
    @Observable var titleLabelHidden = false
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let container = ViewContainer {
            VStack {
                UILabel()
                    .text("SimpleChainableStackUI")
                    .font(UIFont.systemFont(ofSize: 20))
                    .textAlignment(.center)
                    .size(height: 28)
                    .assign(to: &titleLabel)
                    .observableHidden($titleLabelHidden)
                    .textColor(.red)
                    .set(\.textColor, to: .blue)
                    .apply { label in
                        label.textColor = .darkGray
                    }
                Spacer()
                    .backgroundColor(UIColor.lightGray)
                    .bindHidden(to: titleLabel)
                HStack(distribution: .fillEqually) {
                    UILabel().text("simple").textAlignment(.center)
                    UILabel().text("chainable").textAlignment(.center)
                    UILabel().text("stack").textAlignment(.center)
                }
                UIButton(type: .system)
                    .title("Hide Title", for: .normal)
                    .onTouchUpInside { [unowned self] in
                        self.titleLabelHidden.toggle()
                    }
            }
        }.frame(CGRect(x: 0, y: 0, width: 240, height: 128))
        
        view.addSubview(container)
        container.center = view.center
    }
}

