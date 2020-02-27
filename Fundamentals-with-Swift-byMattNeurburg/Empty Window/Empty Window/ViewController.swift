//
//  ViewController.swift
//  Empty Window
//
//  Created by Eric Golovin on 2/24/20.
//

import UIKit
import MyCoolFramework

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let arr = Bundle.main.loadNibNamed("View", owner: nil, options: nil)!
        let v = arr[0] as! UIView
        self.view.addSubview(v)
    }
    
    let frameworkTesting = ObjectFromFramework(testValue: 33)
    
}

