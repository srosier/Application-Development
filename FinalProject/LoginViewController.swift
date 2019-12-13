//
//  LoginViewController.swift
//  FinalProject
//
//  Created by Sami Rosier on 02/12/2019.
//  Copyright © 2019 Sami Rosier. All rights reserved.
//

import Foundation
import Firebase
import UIKit


class LogInViewController: UIViewController {
    
    
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Making password input hidden
        passwordInput.isSecureTextEntry = true
    }
    
    

    
    
    // USED FIREBASE FOR LOG IN/OUT AND REGISTRATION FUNCTIONALITY
    @IBAction func signIn(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailInput.text!, password: passwordInput.text!) { (user, error) in
            if error == nil{
                self.performSegue(withIdentifier: "loginToHome", sender: self)
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
    



    


