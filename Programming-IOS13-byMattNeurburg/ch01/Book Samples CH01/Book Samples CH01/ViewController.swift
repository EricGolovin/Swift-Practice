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
        //        let v1 = UIView(frame: CGRect(x: 100, y: 111, width: 132, height: 194))
        //        v1.backgroundColor = .red
        //        let v2 = UIView(frame: CGRect(x: 0, y: 0, width: 132, height: 10))
        //        v2.backgroundColor = .green
        //        let v1b = v1.bounds
        //        let v3 = UIView(frame: CGRect(x: v1b.width-20, y: v1b.height-20, width: 20, height: 20))
        //        v3.backgroundColor = .purple
        //        self.view.addSubview(v1)
        //        v1.addSubview(v2)
        //        v1.addSubview(v3)
        //
        //        v2.autoresizingMask = .flexibleWidth
        //        v3.autoresizingMask = [.flexibleTopMargin, .flexibleLeftMargin]
        //
        //        v1.bounds.size.width += 40
        //        v1.bounds.size.height += 50
        
        // MARK: Example page 39
        //        let lab1 = UILabel(frame: CGRect(x: 270, y: 20, width: 42, height: 22))
        //        lab1.autoresizingMask = [.flexibleLeftMargin, .flexibleBottomMargin]
        //        lab1.text = "Hello"
        //
        //        let lab2 = UILabel()
        //        lab2.translatesAutoresizingMaskIntoConstraints = false
        //        lab2.text = "Howdy"
        //
        //        self.view.addSubview(lab1)
        //        self.view.addSubview(lab2)
        //
        //        NSLayoutConstraint.activate([
        //            lab2.topAnchor.constraint(equalTo: lab1.bottomAnchor, constant: 20),
        //            lab2.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20)
        //        ])
        
        // MARK: Example page 40
        let v1 = UIView(frame: CGRect(x: 100, y: 111, width: 132, height: 194))
        v1.backgroundColor = .red
        let v2 = UIView()
        v2.backgroundColor = .green
        let v3 = UIView()
        v3.backgroundColor = .purple
        
        self.view.addSubview(v1)
        v1.addSubview(v2)
        v1.addSubview(v3)
        
        v2.translatesAutoresizingMaskIntoConstraints = false
        v3.translatesAutoresizingMaskIntoConstraints = false
        
        //        v1.addConstraint(
        //            NSLayoutConstraint(item: v2,
        //                               attribute: .leading,
        //                               relatedBy: .equal,
        //                               toItem: v1,
        //                               attribute: .leading,
        //                               multiplier: 1,
        //                               constant: 0)
        //        )
        //        v1.addConstraint(
        //            NSLayoutConstraint(item: v2,
        //                               attribute: .trailing,
        //                               relatedBy: .equal,
        //                               toItem: v1,
        //                               attribute: .trailing,
        //                               multiplier: 1,
        //                               constant: 0)
        //        )
        //        v1.addConstraint(
        //            NSLayoutConstraint(item: v2,
        //                               attribute: .top,
        //                               relatedBy: .equal,
        //                               toItem: v1,
        //                               attribute: .top,
        //                               multiplier: 1,
        //                               constant: 0)
        //        )
        //        v2.addConstraint(
        //            NSLayoutConstraint(item: v2,
        //                               attribute: .height,
        //                               relatedBy: .equal,
        //                               toItem: nil,
        //                               attribute: .notAnAttribute,
        //                               multiplier: 1,
        //                               constant: 10)
        //        )
        //        v3.addConstraint(
        //            NSLayoutConstraint(item: v3,
        //                               attribute: .width,
        //                               relatedBy: .equal,
        //                               toItem: nil,
        //                               attribute: .notAnAttribute,
        //                               multiplier: 1,
        //                               constant: 20)
        //        )
        //        v3.addConstraint(
        //            NSLayoutConstraint(item: v3,
        //                               attribute: .height,
        //                               relatedBy: .equal,
        //                               toItem: nil,
        //                               attribute: .notAnAttribute,
        //                               multiplier: 1,
        //                               constant: 20)
        //        )
        //        v1.addConstraint(
        //            NSLayoutConstraint(item: v3,
        //                               attribute: .trailing,
        //                               relatedBy: .equal,
        //                               toItem: v1,
        //                               attribute: .trailing,
        //                               multiplier: 1,
        //                               constant: 0)
        //        )
        //        v1.addConstraint(
        //            NSLayoutConstraint(item: v3,
        //                               attribute: .bottom,
        //                               relatedBy: .equal,
        //                               toItem: v1,
        //                               attribute: .bottom,
        //                               multiplier: 1,
        //                               constant: 0))
        NSLayoutConstraint.activate([ v2.leadingAnchor.constraint(equalTo:v1.leadingAnchor), v2.trailingAnchor.constraint(equalTo:v1.trailingAnchor), v2.topAnchor.constraint(equalTo:v1.topAnchor), v2.heightAnchor.constraint(equalToConstant:10), v3.widthAnchor.constraint(equalToConstant:20), v3.heightAnchor.constraint(equalToConstant:20), v3.trailingAnchor.constraint(equalTo:v1.trailingAnchor), v3.bottomAnchor.constraint(equalTo:v1.bottomAnchor)
        ])
    }
}

