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
    
    /// A ViewController que está requisitando o novo Module.
    var viewController: UserViewController? { get set }
    
    /// Função que será chamada pela ViewController para ir para outro Module.
    func routeToSomewhere()
}


/// Usaremos esse protocol para armazenar dados que serão transferidos de outro Module.
/// O Router do outro Module irá setar as propriedades existentes aqui com os valores das
/// propriedades do interactor dele. Os dois routers (source e destino) precisarão assinar
/// esse protocolo, já que terão que passar os valores das mesmas variáveis. Diferente da
/// classe Model que armazena um objeto inteiro, aqui queremos apenas os
/// dados que serão transferidos entre Modules (o que não impede que esses dados sejam do
/// tipo que estão na model).
protocol UserDataPassing {
    
    /// Usaremos a interactor aqui para fazer a transferência de dados entre Modules.
    var dataStore: UserDataStore? { get set }
}
