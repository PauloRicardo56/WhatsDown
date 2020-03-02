//
//  UserPresenterProtocol.swift
//  WhatsDown
//
//  Created by Paulo Ricardo on 3/1/20.
//  Copyright © 2020 Paulo Ricardo. All rights reserved.
//

import UIKit

/// User Module Presenter Protocol
protocol UserPresenterProtocol {
    
    /// Chamado pelo Interactor quando o fetch foi concluído com sucesso.
    /// Daqui de dentro chamamos a View para mostrar os dados recebidos
    /// - Parameters:
    ///   - object: Objecto resgatado com sucesso pelo interactor, que será enviado para a View pelo Presenter.
    func present(didFetch response: UserDetails.User.UserResponse)
    
    /// Chamado pelo Interactor quando ocorrer erro no fetch. Daqui de
    /// dentro fazemos o tratamento do erro, e como ele irá para a UI.
    /// - Parameters:
    ///   - error: Descrição do erro encontrado pelo Interactor ao
    ///   resgatar o dado no banco.
    func present(didFailWith error: Error)
    
    /// Chamamos o Presenter quando tivemos uma ação que requer
    /// que guardamos um dado.
    /// - Parameters:
    ///   - object: Objeto que será guardado no banco.
    //func store(User object: UserEntity.UserView)
}
