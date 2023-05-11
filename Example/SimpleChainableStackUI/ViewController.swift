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
    
    var titleLabel: UILabel!
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
                    for text in ["simple", "chainable", "stack"] {
                        UILabel().text(text).textAlignment(.center)
                    }
                    if titleLabel.isHidden {
                        UILabel().text("")
                    }
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

