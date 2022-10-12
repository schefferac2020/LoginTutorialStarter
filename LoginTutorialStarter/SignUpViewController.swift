//
//  SignUpViewController.swift
//  LoginTutorialStarter
//
//  Created by Drew Scheffer on 10/12/22.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        print("Name: \(nameField.text!)")
        print("Email: \(emailField.text!)")
        print("Password: \(passwordField.text!)")
        self.performSegue(withIdentifier: "signupSegue", sender: self)
    }
    
    @IBAction func dismissSignUp(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
}
