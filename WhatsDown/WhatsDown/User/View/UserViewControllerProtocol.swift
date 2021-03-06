//
//  UserViewControllerProtocol.swift
//  WhatsDown
//
//  Created by Paulo Ricardo on 3/1/20.
//  Copyright © 2020 Paulo Ricardo. All rights reserved.
//

import UIKit


/// Implementamos funções para a visualização dos dados.
protocol UserViewControllerProtocol: class {
    
    /// Atualizamos a UI com o valor retornado.
    /// - Parameter object: Objeto - EntityView - que será mostrado na UI. Deve já vir preparado do Presenter para a visualização
    func set(viewModel: UserDetails.User.UserViewModel)
    
    func displayAlert(_ alert: UIAlertController)
    
    func displayLoginErrorAlert(_ alert: UIAlertController)
    
    func presentMessages()
}
