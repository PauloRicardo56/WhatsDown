//
//  MessagesInteractorProtocols.swift
//  WhatsDown
//
//  Created by Paulo Ricardo on 3/2/20.
//  Copyright © 2020 Paulo Ricardo. All rights reserved.
//

import UIKit


protocol MessagesInteractorProtocol {
    /// Chamado pelo Presenter.
    /// É aqui que damos fetch em um banco ou framework
    /// para pegar os dados, também é possível que seja feita
    /// alguma transformação dos dados resgatados.
    /// - Parameter presenter: Presenter que está pedindo os dados.
    func fetch(request: MessagesDetails.Messages.MessagesRequest)
    
    /// Suppose we have a database to store the incoming object from presenter.
    /// - Parameter object: Objeto - EntityData - que será armazenado no banco.
    //func store(objectToStore object: MessagesEntity.MessagesData)
    
    func sendMessage(msg: MessagesDetails.Messages.MessagesViewModel)
}


// Aqui irão os dados que serão passados de um Module para outro através da Router
// A Router que setará esses dados.
protocol MessagesDataStore {
    var usrName: String? { get set }
}
