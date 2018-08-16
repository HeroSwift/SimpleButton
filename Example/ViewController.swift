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
        
        button.onPress = {
            print("123")
        }
        button.setBackgroundColor(color: .red, for: .highlighted)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

