//
//  UserViewController.swift
//  WhatsDown
//
//  Created by Paulo Ricardo on 3/1/20.
//  Copyright © 2020 Paulo Ricardo. All rights reserved.
//

import UIKit

/// User Module View
class UserViewController: UIViewController {
    
    var interactor: UserInteractorProtocol?
    var router: (UserRouterProtocol & UserDataPassing)?
    var object: UserDetails.User.UserViewModel?
    
    //MARK: - Outles:
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        
        // Informs the Presenter that the View is ready to receive data.
        //interactor?.fetch(request: <#UserDetails.User.UserRequest#>)
    }
    
    
    func setup() {
        
        let interactor = UserInteractor()
        let presenter = UserPresenter()
        let router = UserRouter()
        
        self.interactor = interactor
        self.router = router
        
        presenter.viewController = self
        router.viewController = self
        router.dataStore = interactor
    }
    
    
    func fetch() {
        let request = UserDetails.User.UserRequest()
        interactor?.fetch(request: request)
    }
    
    
    //MARK: - Actions:
    
}

// MARK: - implementing UserViewProtocol
extension UserViewController: UserViewControllerProtocol {
    
    func set(viewModel: UserDetails.User.UserViewModel) {
        
    }
}
