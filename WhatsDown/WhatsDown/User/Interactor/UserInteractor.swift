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
class UserInteractor: UserInteractorProtocol, UserDataStore {
    
    let presenter = UserPresenter()
    let worker = UserWorker()
    
    // MARK: - DataStore
    var email: String?
    
    init(presenterView: UserViewControllerProtocol) {
        presenter.viewController = presenterView
        worker.changeAuthState()
    }

    
    func fetch(request: UserDetails.User.UserRequest) {
        
        // Fazemos o fetch na classe worker
        // work.fetch() ...
        // Quando temos o resultado chamamos a presenter:
        //self.presenter.present(response: responseData)
    }
    
    
    func signUp(login: UserDetails.User.UserLogin) {
        worker.signUp(login: login) { (user, error) in
            if let error = error {
                self.presenter.alertError(error: error)
            } else {
                self.presenter.alertLoginSuccess()
            }
        }
    }
    
    
    func login(login: UserDetails.User.UserLogin) {
        worker.login(login: login) { (user, error) in
            if let error = error, user == nil {
                self.presenter.alertLoginError(error: error)
            }
        }
    }
    
    
    //func store(objectToStore object: UserEntity.UserData) {
        
    //}
}



