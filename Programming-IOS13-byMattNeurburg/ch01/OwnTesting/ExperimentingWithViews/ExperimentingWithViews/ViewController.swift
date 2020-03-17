//
//  ViewController.swift
//  ExperimentingWithViews
//
//  Created by Eric Golovin on 17.03.2020.
//  Copyright © 2020 Eric Golovin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let v = UIView(frame: CGRect(x: 50, y: 50, width: 50, height: 50))
        v.backgroundColor = UIColor { tc in
            switch tc.userInterfaceStyle {
            case .dark:
                return UIColor(red: 0.3, green: 0.1, blue: 0.1, alpha: 1)
            default:
                return UIColor(red: 0, green: 0.1, blue: 0.1, alpha: 1)
            }
        }
//        v.backgroundColor = UIColor(named: "myDarkColor")
        self.view.addSubview(v)
    }

    @IBAction func showViews(_ sender: UIButton) {
        let rootView = UIView(frame: CGRect(x: 200, y: 200, width: 50, height: 50))
        rootView.backgroundColor = .blue
        let subView = UIView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
        subView.backgroundColor = .yellow
        
        if sender.currentTitle! == "Show Views" {
            sender.setTitle("Hide Views", for: .normal)
            view.addSubview(rootView)
            rootView.addSubview(subView)
        } else {
            sender.setTitle("Show Views", for: .normal)
            self.view.subviews[2].removeFromSuperview()
        }
    }
}
