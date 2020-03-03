//
//  UserRouterProtocol.swift
//  WhatsDown
//
//  Created by Paulo Ricardo on 3/1/20.
//  Copyright © 2020 Paulo Ricardo. All rights reserved.
//

import UIKit

/// User Module Router Protocol (aka: Wireframe)
protocol UserRouterProtocol {
    
    var navigationController: UINavigationController { get set }
    
    /// Colocaríamos o nome do module para qual iremos.
    /// Chamado pelo Coordinator.
    //func routeToSomewhere(destination: SomewhereViewController)
    
    // Aqui podemos colocar mais funções
    // para cada module disponível para ir.
    //func routeToSomewhereElse()
    // ...
    func routeToSignUp(vc: SignUpViewController, email: String)
    
    func routeToMessages(vc: MessagesViewController)
}


protocol UserDataPassing {
    var dataStore: UserDataStore? { get set }
}
