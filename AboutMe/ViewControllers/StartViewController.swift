//
//  StartViewController.swift
//  AboutMe
//
//  Created by Ilya Feklin on 10.02.2025.
//

import UIKit

final class StartViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let validUser = "1"
    private let validPassword = "1"
    
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    private let user = User.getSampleUser()
    
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
            
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == validUser, passwordTextField.text == validPassword else {
            showLoginError()
            return false
        }
        
        // Введенное имя валидно, разрешаем переход
        return true
    }

    private func showLoginError(){
        let alert = UIAlertController(
            title: "Ошибка",
            message: "Неверный пароль или логин",
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "Ок", style: .default))
        present(alert, animated: true)
    }
    
    @IBAction func forgotUserNameTapped(_ sender: UIButton) {
        showAlert(title: "Упссс!", message: "Ваше имя пользователя: \(validUser)")
    }
    
    @IBAction func forgotPasswordTapped(_ sender: UIButton) {
        showAlert(title: "Упссс!", message: "Ваш пароль: \(validUser)")
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.userNameValue = userNameTextField.text
    }
    
    @IBAction func unwindToLogin(_ segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
        
    }
}

