//
//  WelcomeViewController.swift
//  AboutMe
//
//  Created by Ilya Feklin on 10.02.2025.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    

    @IBOutlet var welcomeLabel: UILabel!
    
//    var userNameValue: String!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //welcomeLabel.text = "Welcome, \(String(describing: userNameValue))!"
        welcomeLabel.text = "Welcome, \(user.person.fullName)!"
        
    }
    
    @IBAction func LogOutAction() {
        navigationController?.popViewController(animated: true)
    }
}
