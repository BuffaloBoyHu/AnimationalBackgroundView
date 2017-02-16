//
//  ViewController.swift
//  AnimationalBackGroundView
//
//  Created by HLH on 2017/2/16.
//  Copyright © 2017年 胡良海. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let backView = AnimationalBackView.init(frame: self.view.bounds)
        self.view.addSubview(backView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

