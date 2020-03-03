//
//  MessagesPresenter.swift
//  WhatsDown
//
//  Created by Paulo Ricardo on 3/2/20.
//  Copyright © 2020 Paulo Ricardo. All rights reserved.
//

import UIKit

/// Messages Module Presenter
class MessagesPresenter {
    
    weak var viewController: MessagesViewControllerProtocol?
}

// MARK: - extending MessagesPresenter to implement it's protocol
extension MessagesPresenter: MessagesPresenterProtocol {
    
    func receiveMsg(newMsg: MessagesDetails.Messages.MessagesViewModel) {
        viewController?.set(viewModel: newMsg)
    }
    
    func present(didFetch response: MessagesDetails.Messages.MessagesResponse) {
        
        //Transformamos o Response em um ViewModel e chamamos a View:
        //viewController.set(viewModel: viewModel)
    }
    
    
    func present(didFailWith error: Error) {
        //Quando recebemos um erro do fetch da iteractor
        //precisamos tratar esse erro na View.
    }
}
