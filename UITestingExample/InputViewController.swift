//
//  InputViewController.swift
//  UITestingExample
//
//  Created by Jan Scheithauer on 25.03.18.
//

import UIKit

class InputViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.inputTextField.delegate = self
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.textLabel.text = textField.text
        return true
    }

}
