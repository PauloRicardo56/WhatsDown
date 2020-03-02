//
//  UserWorker.swift
//  WhatsDown
//
//  Created by Paulo Ricardo on 3/1/20.
//  Copyright © 2020 Paulo Ricardo. All rights reserved.
//

import Foundation
import UIKit
import Firebase


class UserWorker {
    
    let auth = Auth.auth()
    
    func signIn(login: UserDetails.User.UserLogin) {
        
        auth.createUser(withEmail: login.email, password: login.password) { (user, error) in
            //TODO: Create error handling with UIAlertController
            if error != nil {
                self.auth.signIn(withEmail: login.email, password: login.password)
            }
        }
    }
    
    
    func login(login: UserDetails.User.UserLogin, completion: AuthDataResultCallback?) {
        
        auth.signIn(withEmail: login.email, password: login.password) { (user, error) in
            completion?(user, error)
//            if let error = error, user == nil {
//                let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
//                alert.addAction(UIAlertAction(title: "OK", style: .default))
//            }
        }
    }
}
