//
//  ViewController.swift
//  FinalProject
//
//  Created by Sami Rosier on 18/11/2019.
//  Copyright © 2019 Sami Rosier. All rights reserved.

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var signin: UIButton!
    @IBOutlet weak var signup: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Attempting to make buttons with cornered edges, not working for some reason
        self.signin.layer.cornerRadius = 20
        self.signin.clipsToBounds = true
        signin.layer.borderWidth = 1
        
        signup.layer.borderWidth = 1
        self.signup.clipsToBounds = true
        self.signup.layer.cornerRadius = 20
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}





