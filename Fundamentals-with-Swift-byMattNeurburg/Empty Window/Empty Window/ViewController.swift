//
//  ViewController.swift
//  Empty Window
//
//  Created by Eric Golovin on 2/24/20.
//

import UIKit
import MyCoolFramework

class ViewController: UIViewController {
    
//    @IBOutlet var coolview: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

//        let arr = Bundle.main.loadNibNamed("View", owner: nil, options: nil)!
//        let v = arr[0] as! UIView
//        
//        Bundle.main.loadNibNamed("View", owner: self, options: nil)
//        self.view.addSubview(self.coolview)
    }
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Howdy!", message: "You tapped me!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel))
        self.present(alert, animated: true)
    }
    

    let frameworkTesting = ObjectFromFramework(testValue: 33)
    
}
