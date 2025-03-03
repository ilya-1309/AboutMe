//
//  ProfileViewController.swift
//  AboutMe
//
//  Created by Ilya Feklin on 02.03.2025.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var bioLabel: UILabel!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text = user.person.fullName
        bioLabel.text = user.person.bio
    }
}


