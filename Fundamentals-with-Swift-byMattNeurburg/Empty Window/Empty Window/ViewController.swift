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
    
    func dogMyCats(_ s: String) -> String {
//        return ""
        return "dogs"
    }
    
    var testValue = 0
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        let alert = UIAlertController(title: NSLocalizedString("Greeting", value: "Howdy!", comment: "Say hello"), message: NSLocalizedString("Tapped", value: "You tapped me!", comment: "User tapped button"), preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("Accept", value: "OK", comment: "Dismiss"), style: .cancel))
        self.present(alert, animated: true)
        testValue += 1
    }

    let frameworkTesting = ObjectFromFramework(testValue: 33)
    
}
