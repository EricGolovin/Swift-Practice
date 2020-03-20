//
//  ViewController.swift
//  Book Samples CH01
//
//  Created by Eric Golovin on 20.03.2020.
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
        //        let v1 = UIView(frame: CGRect(x: 113, y: 111, width: 132, height: 192))
        //        v1.backgroundColor = .systemPink
        //        let v2 = UIView(frame: v1.bounds.insetBy(dx: 10, dy: 10))
        //        v2.backgroundColor = .systemGreen
        //
        //        v2.bounds.size.height += 20
        //        v2.bounds.size.width += 20
        //
        //        self.view.addSubview(v1)
        //        v1.addSubview(v2)
        
        // MARK: Figure 1.5
        //        let v1 = UIView(frame: CGRect(x: 113, y: 111, width: 132, height: 192))
        //        v1.backgroundColor = .systemPink
        //        let v2 = UIView(frame: v1.bounds.insetBy(dx: 10, dy: 10))
        //        v2.backgroundColor = .systemGreen
        //
        //        v1.bounds.origin.x += 10
        //        v1.bounds.origin.y += 10
        //
        ////        v1.center = view.center // how to center view in parent view
        //
        ////        v2.center = v1.convert(v1.center, from: v1.superview)
        ////        v2.center = CGPoint(x: v1.bounds.midX, y: v1.bounds.midY)
        //
        //        self.view.addSubview(v1)
        //        v1.addSubview(v2)
        
        // MARK: Figure 1.6
        //        let v1 = UIView(frame: CGRect(x: 113, y: 111, width: 132, height: 192))
        //        v1.backgroundColor = .systemPink
        //        let v2 = UIView(frame: v1.bounds.insetBy(dx: 10, dy: 10))
        //        v2.backgroundColor = .systemGreen
        //
        //        self.view.addSubview(v1)
        //        v1.addSubview(v2)
        //
        //        v1.transform = CGAffineTransform(rotationAngle: 45 * .pi/180)
        //        print(v1.frame)
        //
        //                v1.transform = CGAffineTransform(scaleX: 1.8, y: 1)
        
        // MARK: Figure 1.7
        //        let v1 = UIView(frame: CGRect(x: 113, y: 111, width: 132, height: 192))
        //        v1.backgroundColor = .systemPink
        //        let v2 = UIView(frame: v1.bounds.insetBy(dx: 10, dy: 10))
        //        v2.backgroundColor = .systemGreen
        //
        //        self.view.addSubview(v1)
        //        v1.addSubview(v2)
        //
        //        v1.transform = CGAffineTransform(scaleX: 1.8, y: 1)
        //        print(v1.frame)
        
        //        // MARK: Figure 1.8
        //        let v1 = UIView(frame: CGRect(x: 113, y: 111, width: 132, height: 192))
        //        v1.backgroundColor = .systemPink
        //        let v2 = UIView(frame: v1.bounds)
        //        v2.backgroundColor = .systemGreen
        //
        //        self.view.addSubview(v1)
        //        v1.addSubview(v2)
        //
        //        v2.transform = CGAffineTransform(translationX: 100, y: 0).rotated(by:  45 * .pi/180)
        
        // MARK: Figure 1.9
        //        let v1 = UIView(frame: CGRect(x: 113, y: 111, width: 132, height: 192))
        //        v1.backgroundColor = .systemPink
        //        let v2 = UIView(frame: v1.bounds)
        //        v2.backgroundColor = .systemGreen
        //
        //        self.view.addSubview(v1)
        //        v1.addSubview(v2)
        //
        //        let r = CGAffineTransform(rotationAngle: 45 * .pi / 180)
        //        let t = CGAffineTransform(translationX: 100, y: 0)
        //
        ////        v2.transform = CGAffineTransform(rotationAngle: 45 * .pi/180).translatedBy(x: 100, y: 0)
        //        v2.transform = t.concatenating(r)
        
        // MARK: Figure 1.10
        //        let v1 = UIView(frame: CGRect(x: 113, y: 111, width: 132, height: 192))
        //        v1.backgroundColor = .systemPink
        //        let v2 = UIView(frame: v1.bounds)
        //        v2.backgroundColor = .systemGreen
        //
        //        self.view.addSubview(v1)
        //        v1.addSubview(v2)
        //
        //        let r = CGAffineTransform(rotationAngle: 45 * .pi / 180)
        //        let t = CGAffineTransform(translationX: 100, y: 0)
        //
        //        v2.transform = t.concatenating(r)
        //        v2.transform = r.inverted().concatenating(v2.transform)
        
        //             MARK: Figure 1.12
        //                    let label = UILabel(frame: CGRect(x: 113, y: 111, width: 100, height: 20))
        //                    label.text = "Hello, World!"
        //                    label.backgroundColor = .blue
        //                    label.textColor = .white
        //
        //                    label.transform3D = CATransform3DMakeRotation(.pi, 0, 1, 0)
        //
        //                    self.view.addSubview(label)
        
        // MARK: Figure 1.13
        let v1 = UIView(frame: CGRect(x: 100, y: 111, width: 132, height: 194))
        v1.backgroundColor = .red
        let v2 = UIView(frame: CGRect(x: 0, y: 0, width: 132, height: 10))
        v2.backgroundColor = .green
        let v1b = v1.bounds
        let v3 = UIView(frame: CGRect(x: v1b.width-20, y: v1b.height-20, width: 20, height: 20))
        v3.backgroundColor = .purple
        self.view.addSubview(v1)
        v1.addSubview(v2)
        v1.addSubview(v3)
        
        v2.autoresizingMask = .flexibleWidth
        v3.autoresizingMask = [.flexibleTopMargin, .flexibleLeftMargin]
        
        v1.bounds.size.width += 40
        v1.bounds.size.height += 50
    }
}

