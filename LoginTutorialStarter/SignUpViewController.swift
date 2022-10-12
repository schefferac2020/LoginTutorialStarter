//
//  SignUpViewController.swift
//  LoginTutorialStarter
//
//  Created by Drew Scheffer on 10/12/22.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class SignUpViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func signUp(){
        Auth.auth().createUser(withEmail: emailField.text!, password: passwordField.text!) {(authResult, err) in
            guard let user = authResult?.user, err == nil else{
                print("ERROR: \(err?.localizedDescription)")
                return;
            }
        }
        self.performSegue(withIdentifier: "signupSegue", sender: self)
    }

    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        print("Name: \(nameField.text!)")
        print("Email: \(emailField.text!)")
        print("Password: \(passwordField.text!)")
        signUp()
    }
    
    @IBAction func dismissSignUp(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
}
