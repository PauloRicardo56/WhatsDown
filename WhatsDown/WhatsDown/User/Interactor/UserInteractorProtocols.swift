//
//  UserInteractorProtocols.swift
//  WhatsDown
//
//  Created by Paulo Ricardo on 3/1/20.
//  Copyright © 2020 Paulo Ricardo. All rights reserved.
//

import UIKit


protocol UserInteractorProtocol {
    /// Chamado pelo Presenter.
    /// É aqui que damos fetch em um banco ou framework
    /// para pegar os dados, também é possível que seja feita
    /// alguma transformação dos dados resgatados.
    /// - Parameter presenter: Presenter que está pedindo os dados.
    func fetch(request: UserDetails.User.UserRequest)
    
    /// Suppose we have a database to store the incoming object from presenter.
    /// - Parameter object: Objeto - EntityData - que será armazenado no banco.
    //func store(objectToStore object: UserEntity.UserData)
    
    func signUp(login: UserDetails.User.UserLogin)
    
    func login(login: UserDetails.User.UserLogin)
}


protocol UserDataStore {
    var email: String? { get set }
}
