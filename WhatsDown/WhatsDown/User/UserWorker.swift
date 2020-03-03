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
    
    func signUp(login: UserDetails.User.UserLogin, completion: AuthDataResultCallback?) {
        
        auth.createUser(withEmail: login.email, password: login.password) { (user, error) in
            if let error = error {
                completion?(user, error)
            } else {
                self.auth.signIn(withEmail: login.email, password: login.password)
                completion?(user, nil)
            }
        }
    }
    
    
    func login(login: UserDetails.User.UserLogin, completion: AuthDataResultCallback?) {
        
        auth.signIn(withEmail: login.email, password: login.password) { (user, error) in
            completion?(user, error)
        }
    }
    
    
    func changeAuthState(completion: AuthStateDidChangeListenerBlock?) {
        auth.addStateDidChangeListener { (auth, user) in
            //TODO: Route to messages
            completion?(auth, user)
        }
    }
}
