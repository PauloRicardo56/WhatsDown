//
//  UserPresenter.swift
//  WhatsDown
//
//  Created by Paulo Ricardo on 3/1/20.
//  Copyright © 2020 Paulo Ricardo. All rights reserved.
//

import UIKit

/// User Module Presenter
class UserPresenter {
    
    weak var viewController: UserViewControllerProtocol?
}

// MARK: - extending UserPresenter to implement it's protocol
extension UserPresenter: UserPresenterProtocol {
    
    func present(didFetch response: UserDetails.User.UserResponse) {
        
        //Transformamos o Response em um ViewModel e chamamos a View:
        //viewController.set(viewModel: viewModel)
    }
    
    
    func present(didFailWith error: Error) {
        //Quando recebemos um erro do fetch da iteractor
        //precisamos tratar esse erro na View.
    }
}
