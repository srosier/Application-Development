//
//  SignUpViewController.swift
//  FinalProject
//
//  Created by Sami Rosier on 02/12/2019.
//  Copyright © 2019 Sami Rosier. All rights reserved.
//

import Foundation
import UIKit
import Firebase


// USED FIREBASE FOR LOG IN/OUT AND REGISTRATION FUNCTIONALITY
class SignUpViewController: UIViewController {
    
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var confPassInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Making password input hidden
        passwordInput.isSecureTextEntry = true
        confPassInput.isSecureTextEntry = true
    }
    
    @IBAction func signUp(_ sender: Any) {
        
        
        if passwordInput.text != confPassInput.text {
            let alertController = UIAlertController(title: "Password Incorrect", message: "Please re-type password", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        else{
            Auth.auth().createUser(withEmail: emailInput.text!, password: passwordInput.text!){ (user, error) in
                if error == nil {
                    self.performSegue(withIdentifier: "signupToHome", sender: self)
                }
                else{
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    
                    alertController.addAction(defaultAction)
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }
}

    


