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
    
    func alertError(error: Error) {
        
        let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        
        viewController!.displayAlert(alert)
    }
    
    
    func alertLoginError(error: Error) {
        
        let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        
        viewController?.displayLoginErrorAlert(alert)
    }
    
    func alertLoginSuccess() {
        
        let alert = UIAlertController(title: "Login", message: "Account created!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        
        viewController?.displayAlert(alert)
    }
    
    
    func present(didFetch response: UserDetails.User.UserResponse) {
        
        //Transformamos o Response em um ViewModel e chamamos a View:
        //viewController.set(viewModel: viewModel)
    }
    
    
    func present(didFailWith error: Error) {
        //Quando recebemos um erro do fetch da iteractor
        //precisamos tratar esse erro na View.
    }
}
