//
//  SignInViewController.swift
//  LoginTutorialStarter
//
//  Created by Drew Scheffer on 10/12/22.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    @IBAction func loginButtonTapped(_ sender: Any) {
        print("Email: \(emailField.text!)")
        print("Password: \(passwordField.text!)")
        
        self.performSegue(withIdentifier: "loginSegue", sender: self)
    }
    
    @IBAction func dismissLogin(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
