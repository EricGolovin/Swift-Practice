//
//  ViewController.swift
//  ThreeViewsTest
//
//  Created by Eric Golovin on 17.03.2020.
//  Copyright © 2020 Eric Golovin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: Figure 1.1
//        let v1 = UIView(frame: CGRect(x: 113, y: 111, width: 132, height: 192))
//        v1.backgroundColor = .systemPink
//        let v2 = UIView(frame: CGRect(x: 41, y: 56, width: 132, height: 194))
//        v2.backgroundColor = .systemGreen
//        let v3 = UIView(frame: CGRect(x: 43, y: 197, width: 160, height: 230))
//        v3.backgroundColor = .systemRed
//
//        self.view.addSubview(v1)
//        v1.addSubview(v2)
//        self.view.addSubview(v3)\

        // MARK: Figure 1.3
//        let v1 = UIView(frame: CGRect(x: 113, y: 111, width: 132, height: 192))
//        v1.backgroundColor = .systemPink
//        let v2 = UIView(frame: v1.bounds.insetBy(dx: 10, dy: 10))
//        v2.backgroundColor = .systemGreen
//
//        self.view.addSubview(v1)
//        v1.addSubview(v2)
        
        // MARK: Figure 1.4
        let v1 = UIView(frame: CGRect(x: 113, y: 111, width: 132, height: 192))
        v1.backgroundColor = .systemPink
        let v2 = UIView(frame: v1.bounds.insetBy(dx: 10, dy: 10))
        v2.backgroundColor = .systemGreen
        
        v2.bounds.size.height += 20
        v2.bounds.size.width += 20
        
        self.view.addSubview(v1)
        v1.addSubview(v2)
        
    }


}

