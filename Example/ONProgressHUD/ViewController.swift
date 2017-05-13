//
//  ViewController.swift
//  ONProgressHUD
//
//  Created by gg4acrossover@gmail.com on 05/13/2017.
//  Copyright (c) 2017 gg4acrossover@gmail.com. All rights reserved.
//

import UIKit
import ONProgressHUD

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.settingUI()
        self.testProgress()
    }
    
    func testProgress() {
        // show progress after 2 seconds
        let testTime = 2.0
        DispatchQueue.main.asyncAfter(deadline: .now() + testTime) {
            ONProgressHUD.show()
        }
        
        // hide this after 5 seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + testTime + 3.0) {
            ONProgressHUD.hide()
        }
    }
    
    func settingUI() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapMe))
        self.view.addGestureRecognizer(tap)
    }
    
    func tapMe(sender : UITapGestureRecognizer) {
        print("tap me")
        self.view.endEditing(true)
    }
}

