//
//  ViewController.swift
//  SpotifyCloneB
//
//  Created by Linder Anderson Hassinger Solano    on 7/05/22.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func onTapedLogin(_ sender: Any) {
        let email = textFieldEmail.text!
        let password = textFieldPassword.text!
        
        login(email: email, password: password)
    }
    
    func login(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if error != nil {
                self.storeUser(email: email, password: password)
            }
            
            // ir a otra vista
        }
    }
    
    func storeUser(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if error == nil {
              // ir a otra vista
            }
        }
    }


}

