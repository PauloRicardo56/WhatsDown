//
//  UserInteractor.swift
//  WhatsDown
//
//  Created by Paulo Ricardo on 3/1/20.
//  Copyright © 2020 Paulo Ricardo. All rights reserved.
//

import UIKit
import Firebase


/// User Module Interactor
class UserInteractor: UserInteractorProtocol {
    
    let presenter = UserPresenter()
    let worker = UserWorker()

    
    func fetch(request: UserDetails.User.UserRequest) {
        
        // Fazemos o fetch na classe worker
        // work.fetch() ...
        // Quando temos o resultado chamamos a presenter:
        //self.presenter.present(response: responseData)
    }
    
    
    func signIn(login: UserDetails.User.UserLogin) {
        
        worker.signIn(login: login)
    }
    
    
    func login(login: UserDetails.User.UserLogin) {
        worker.login(login: login) { (user, error) in
            if let error = error, user == nil {
                self.presenter.signInError(error: error)
            }
        }
    }
    
    
    //func store(objectToStore object: UserEntity.UserData) {
        
    //}
}


// MARK: - DataStore
extension UserInteractor: UserDataStore {
    
    //var name: String
    //var age: Int
}
