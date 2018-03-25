//
//  ViewController.swift
//  UITestingExample
//
//  Created by Jan Scheithauer on 22.03.18.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func touchNextView(_ sender: Any) {
        self.performSegue(withIdentifier: "showInputViewController", sender: self)
    }
    
}

