//
//  LoginViewController.swift
//  practiceProject
//
//  Created by Aylwing Olivas on 5/27/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var titleLogin: UILabel!
    
    var funcCallBack: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLogin.text = NSLocalizedString("Welcome to App", comment: "Login title")
        loginButton.titleLabel?.text = NSLocalizedString("Login", comment: "Button title")
    }
    
    @IBAction func sigUpButton(_ sender: Any) {
        funcCallBack?()
    }
}
