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
//    var router: (UserRouterProtocol & UserDataPassing)?
    var coordinator: UserCoordinatorProtocol?
    var object: UserDetails.User.UserViewModel?
    
    //MARK: - Outles:
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        
        // Informs the Presenter that the View is ready to receive data.
        
    }
    
    
    func setup() {
        
        let interactor = UserInteractor(presenterView: self)
        let router = UserRouter(navigationController: self.navigationController!)
        
        self.interactor = interactor
        self.coordinator = UserCoordinator(router: router, view: self)
        
        router.dataStore = interactor
    }
    
    
    func fetch() {
        let request = UserDetails.User.UserRequest()
        interactor?.fetch(request: request)
    }
    
    
    //MARK: - Actions:
    @IBAction func login(_ sender: Any) {
        
        if !email.text!.isEmpty && !password.text!.isEmpty {
            let user = UserDetails.User.UserLogin(email: email.text!, password: password.text!)
            interactor?.login(login: user)
        }
    }
    
    
    @IBAction func signUpView(_ sender: Any) {
        
        coordinator?.present(vcName: ViewsNames.signIn)
    }
}

// MARK: - implementing UserViewProtocol
extension UserViewController: UserViewControllerProtocol {
    
    func displayAlert(_ alert: UIAlertController) {
        
        self.present(alert, animated: true)
    }
    
    
    func displayLoginErrorAlert(_ alert: UIAlertController) {
        
        alert.addAction(UIAlertAction(title: "Sign in", style: .default, handler: { _ in
            self.coordinator?.present(vcName: ViewsNames.signIn)
        }))
        self.displayAlert(alert)
    }
    
    
    func set(viewModel: UserDetails.User.UserViewModel) {
        
    }
}
