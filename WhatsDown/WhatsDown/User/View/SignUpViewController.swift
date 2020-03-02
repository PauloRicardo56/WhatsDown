//
//  SignUpViewController.swift
//  WhatsDown
//
//  Created by Paulo Ricardo on 3/2/20.
//  Copyright © 2020 Paulo Ricardo. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    var interactor: (NSObjectProtocol & UserInteractorProtocol & UserDataStore)?
    
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUp()
    }
    
    
    func setUp() {
        email.text! = interactor!.email!
    }   
    
    
    @IBAction func signUp(_ sender: Any) {
        if !email.text!.isEmpty && !password.text!.isEmpty {
            let login = UserDetails.User.UserLogin(email: email.text!, password: password.text!)
            interactor?.signUp(login: login)
        }
    }
}
