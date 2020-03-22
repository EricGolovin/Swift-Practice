//
//  ViewController.swift
//  Book Samples CH01
//
//  Created by Eric Golovin on 20.03.2020.
//  Copyright © 2020 Eric Golovin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Figure 1.15-1
//    var v2: UIView!
//    var constraintsWith = [NSLayoutConstraint]()
//    var constraintsWithout = [NSLayoutConstraint]()
    
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
        //        let v1 = UIView(frame: CGRect(x: 100, y: 111, width: 132, height: 194))
        //        v1.backgroundColor = .red
        //        let v2 = UIView()
        //        v2.backgroundColor = .green
        //        let v3 = UIView()
        //        v3.backgroundColor = .purple
        //
        //        self.view.addSubview(v1)
        //        v1.addSubview(v2)
        //        v1.addSubview(v3)
        //
        //        v2.translatesAutoresizingMaskIntoConstraints = false
        //        v3.translatesAutoresizingMaskIntoConstraints = false
        
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
        //        NSLayoutConstraint.activate([
        //            v2.leadingAnchor.constraint(equalTo:v1.leadingAnchor),
        //            v2.trailingAnchor.constraint(equalTo:v1.trailingAnchor),
        //            v2.topAnchor.constraint(equalTo:v1.topAnchor), v2.heightAnchor.constraint(equalToConstant:10),
        //            v3.widthAnchor.constraint(equalToConstant:20), v3.heightAnchor.constraint(equalToConstant:20),
        //            v3.trailingAnchor.constraint(equalTo:v1.trailingAnchor),
        //            v3.bottomAnchor.constraint(equalTo:v1.bottomAnchor)
        //        ])
        
        // MARK: Figure 1.15
        //        let v1 = UIView()
        //        v1.backgroundColor = .red
        //        v1.translatesAutoresizingMaskIntoConstraints = false
        //        let v2 = UIView()
        //        v2.backgroundColor = .yellow
        //        v2.translatesAutoresizingMaskIntoConstraints = false
        //        let v3 = UIView()
        //        v3.backgroundColor = .blue
        //        v3.translatesAutoresizingMaskIntoConstraints = false
        //
        //        self.view.addSubview(v1)
        //        self.view.addSubview(v2)
        //        self.view.addSubview(v3)
        //
        //        self.v2 = v2 // retain
        //
        //        // construct constraints
        //        let c1 = NSLayoutConstraint.constraints(withVisualFormat:
        //            "H:|-(20)-[v(100)]", metrics: nil, views: ["v":v1])
        //        let c2 = NSLayoutConstraint.constraints(withVisualFormat:
        //            "H:|-(20)-[v(100)]", metrics: nil, views: ["v":v2])
        //        let c3 = NSLayoutConstraint.constraints(withVisualFormat:
        //            "H:|-(20)-[v(100)]", metrics: nil, views: ["v":v3])
        //        let c4 = NSLayoutConstraint.constraints(withVisualFormat:
        //            "V:|-(100)-[v(20)]", metrics: nil, views: ["v":v1])
        //        let c5with = NSLayoutConstraint.constraints(withVisualFormat:
        //            "V:[v1]-(20)-[v2(20)]-(20)-[v3(20)]", metrics: nil, views: ["v1":v1, "v2":v2, "v3":v3])
        //        let c5without = NSLayoutConstraint.constraints(withVisualFormat:
        //            "V:[v1]-(20)-[v3(20)]", metrics: nil, views: ["v1":v1, "v3":v3])
        //
        //        // apply common constraints
        //        NSLayoutConstraint.activate([c1, c3, c4].flatMap{$0}) // first set of constraints (for when v2 is present)
        //        self.constraintsWith.append(contentsOf:c2)
        //        self.constraintsWith.append(contentsOf:c5with)
        //
        //        // second set of constraints (for when v2 is absent)
        //        self.constraintsWithout.append(contentsOf:c5without)
        //
        //        // apply first set
        //        NSLayoutConstraint.activate(self.constraintsWith)
        //
        //        func doSwap() {
        //            if self.v2.superview != nil {
        //                self.v2.removeFromSuperview()
        //                NSLayoutConstraint.deactivate(self.constraintsWith)
        //                NSLayoutConstraint.activate(self.constraintsWithout)
        //            } else {
        //                self.view.addSubview(v2)
        //                NSLayoutConstraint.deactivate(self.constraintsWithout)
        //                NSLayoutConstraint.activate(self.constraintsWith)
        //            }
        //        }
        
        
        
        // MARK: Figure 1.16
//        let v1 = UIView()
//        let v2 = UIView()
//        let v3 = UIView()
//        let v4 = UIView()
//
//        v1.backgroundColor = .green
//        v2.backgroundColor = .red
//        v3.backgroundColor = .purple
//        v4.backgroundColor = .blue
//
//        let sv = UIStackView()
//
//        sv.axis = .vertical
//        sv.alignment = .fill
//        sv.distribution = .equalSpacing
//        sv.translatesAutoresizingMaskIntoConstraints = false
//
//        sv.addArrangedSubview(v1)
//        sv.addArrangedSubview(v2)
//        sv.addArrangedSubview(v3)
//        sv.addArrangedSubview(v4)
//
//        self.view.addSubview(sv)
//
//        let marg = self.view.layoutMarginsGuide
//        let safe = self.view.safeAreaLayoutGuide
//
//        NSLayoutConstraint.activate([
//            sv.topAnchor.constraint(equalTo: safe.topAnchor),
//            sv.leadingAnchor.constraint(equalTo: marg.leadingAnchor),
//            sv.trailingAnchor.constraint(equalTo: marg.trailingAnchor),
//            sv.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
//        ])
        
        // MARK: Figure 1.24
        
    }
}

