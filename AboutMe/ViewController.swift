//
//  ViewController.swift
//  AboutMe
//
//  Created by Ilya Feklin on 10.02.2025.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let validUser = 1
    private let validPassword = 1
    
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        logInButton.layer.cornerRadius = 10
    }

    private func setupUI() {
        userNameTextField.autocorrectionType = .no
        userNameTextField.textContentType = .oneTimeCode
        
        passwordTextField.isSecureTextEntry = true
        passwordTextField.autocorrectionType = .no
        passwordTextField.textContentType = .oneTimeCode
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.userNameValue = userNameTextField.text
    }
    
    @IBAction func unwindToLogin(_ segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        userNameTextField.text = ""
        
    }
    
}

