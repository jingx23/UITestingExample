//
//  ViewControllerWithoutStoryboard.swift
//  UITestingExample
//
//  Created by Jan Scheithauer on 23.03.18.
//

import UIKit

class ViewControllerWithoutStoryboard: UIViewController {
    
    fileprivate let helloWorldLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        helloWorldLabel.text = "Hello from ViewController without Storyboard"
        helloWorldLabel.textAlignment = .center
        self.view.addSubview(helloWorldLabel)
        
        helloWorldLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            helloWorldLabel.topAnchor.constraint(equalTo: self.view.topAnchor),
            helloWorldLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            helloWorldLabel.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            helloWorldLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
    }

}
