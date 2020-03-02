//
//  UserInteractor.swift
//  WhatsDown
//
//  Created by Paulo Ricardo on 3/1/20.
//  Copyright © 2020 Paulo Ricardo. All rights reserved.
//

import UIKit


/// User Module Interactor
class UserInteractor: UserInteractorProtocol {

    func fetch(request: UserDetails.User.UserRequest) {
        
        // Fazemos o fetch na classe worker
        // work.fetch() ...
        // Quando temos o resultado chamamos a presenter:
        //self.presenter.present(response: responseData)
    }
    
    
    //func store(objectToStore object: UserEntity.UserData) {
        
    //}
}


// MARK: - DataStore
extension UserInteractor: UserDataStore {
    
    //var name: String
    //var age: Int
}
