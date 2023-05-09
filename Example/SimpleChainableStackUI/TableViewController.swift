//
//  TableViewController.swift
//  SimpleChainableStackUI_Example
//
//  Created by Orisun on 2023/5/8.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import UIKit
import SimpleChainableStackUI

class TableViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let tableView = UITableView(frame: view.bounds, style: .plain)
            .delegate(self)
            .dataSource(self)
            .registerClass(TempTableViewCell.self, forCellReuseIdentifier: "TempTableViewCell")
        view.addSubview(tableView)
    }
}

extension TableViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        25
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TempTableViewCell", for: indexPath)
        
        let button: UIButton
        if let view = cell.viewWithTag(1000) as? UIButton {
            button = view
        } else {
            button = UIButton(type: .system)
                .tag(1000)
                .frame(CGRect(x: 16, y: 0, width: 100, height: 44))
            cell.addSubview(button)
        }
        
        button.title("\(indexPath.row)", for: .normal)
        button.onTouchUpInside {
            print("touchUpInside \(indexPath.row)")
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
}

class TempTableViewCell : UITableViewCell {
    
    deinit {
        print("TempTableViewCell is deinit")
        objc_getAssociatedObject(self, "")
    }
}
