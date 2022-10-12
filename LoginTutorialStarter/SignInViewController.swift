//
//  SignInViewController.swift
//  LoginTutorialStarter
//
//  Created by Drew Scheffer on 10/12/22.
//

import UIKit
import FirebaseAuth
import FirebaseCore

class SignInViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if (Auth.auth().currentUser != nil){
            performSegue(withIdentifier: "loginSegue", sender: self)
        }
    }
    
    
    func signIn(){
        Auth.auth().signIn(withEmail: emailField.text!, password: passwordField.text!) {(authRes, err) in
            guard err == nil else{
                print("ERROR: \(err?.localizedDescription)")
                return;
            }
            
            self.performSegue(withIdentifier: "loginSegue", sender: self)
        }
    }
    


    @IBAction func loginButtonTapped(_ sender: Any) {
        print("Email: \(emailField.text!)")
        print("Password: \(passwordField.text!)")
        
        signIn()
    }
    
    @IBAction func dismissLogin(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
