//
//  ViewController.swift
//  Example
//
//  Created by zhujl on 2018/8/16.
//  Copyright © 2018年 finstao. All rights reserved.
//

import UIKit
import SimpleButton

class ViewController: UIViewController {

    @IBOutlet weak var button: SimpleButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.onClick = {
            print("123")
        }
        button.setBackgroundColor(color: .red, for: .highlighted)
        
        button.setLeftBorder(width: 0.5, color: .red)
        button.setTopBorder(width: 0.5, color: .blue)
        button.setRightBorder(width: 0.5, color: .green)
        button.setBottomBorder(width: 0.5, color: .cyan)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

