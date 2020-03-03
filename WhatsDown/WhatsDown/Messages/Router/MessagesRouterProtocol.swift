//
//  MessagesRouterProtocol.swift
//  WhatsDown
//
//  Created by Paulo Ricardo on 3/2/20.
//  Copyright © 2020 Paulo Ricardo. All rights reserved.
//

import UIKit

/// Messages Module Router Protocol (aka: Wireframe)
protocol MessagesRouterProtocol {
    
    var navigationController: UINavigationController? { get set }
    
    /// Colocaríamos o nome do module para qual iremos.
    /// Chamado pelo Coordinator.
    //func routeToSomewhere(destination: SomewhereViewController)
    
    // Aqui podemos colocar mais funções
    // para cada module disponível para ir.
    //func routeToSomewhereElse()
    // ...
}


protocol MessagesDataPassing {
    var dataStore: MessagesDataStore? { get set }
}
