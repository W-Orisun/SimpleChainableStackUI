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
    
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.present(TableViewController(), animated: true)
        }
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
                    .size(height: 28)
                    .apply { label in
                        label.textColor = .red
                    }
                    .assign(to: &label)
                Spacer()
                    .backgroundColor(.red)
                    .bindHidden(to: label)
                HStack(distribution: .fillEqually) {
                    UILabel().text("simple").textAlignment(.center)
                    UILabel().text("chainable").textAlignment(.center)
                    UILabel().text("stack").textAlignment(.center)
                }
                UIButton(type: .system)
                    .title("隐藏标题", for: .normal)
                    .apply { [unowned self] button in
                        button.addTarget(self, action: #selector(changeLabelHidden), for: .touchUpInside)
                    }
            }
        }.frame(CGRect(x: 0, y: 0, width: 240, height: 128))
        
        view.addSubview(container)
        container.center = view.center
    }
    
    @objc func changeLabelHidden() {
        label.isHidden.toggle()
    }
}

