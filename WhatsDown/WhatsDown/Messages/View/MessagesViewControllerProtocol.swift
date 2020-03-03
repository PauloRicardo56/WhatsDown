//
//  MessagesViewControllerProtocol.swift
//  WhatsDown
//
//  Created by Paulo Ricardo on 3/2/20.
//  Copyright © 2020 Paulo Ricardo. All rights reserved.
//

import UIKit


/// Implementamos funções para a visualização dos dados.
protocol MessagesViewControllerProtocol: class {
    
    /// Atualizamos a UI com o valor retornado.
    /// - Parameter object: Objeto - EntityView - que será mostrado na UI. Deve já vir preparado do Presenter para a visualização
    func set(viewModel: MessagesDetails.Messages.MessagesViewModel)
}
