//
//  WelcomeViewController.swift
//  AboutMe
//
//  Created by Ilya Feklin on 10.02.2025.
//

import UIKit

final class WelcomeViewController: UIViewController {

    
    @IBOutlet var userNameLabel: UITextField!
    @IBOutlet var welcomeLabel: UITextField!
    
    var userNameValue: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = userNameValue
      
    }
    
    @IBAction func LogOutAction() {
        dismiss(animated: true)
    }
    
}
