 //
//  MessagesInteractor.swift
//  WhatsDown
//
//  Created by Paulo Ricardo on 3/2/20.
//  Copyright © 2020 Paulo Ricardo. All rights reserved.
//

import UIKit
 

/// Messages Module Interactor
 class MessagesInteractor: MessagesInteractorProtocol, MessagesDataStore {
    
    var presenter: MessagesPresenterProtocol?
    /// If we're working with network/databases.
    var worker = MessagesWorker()
    
    // MARK: - DataStore
    var usrName: String?
    
    
    init() {
        worker.msgOberver { (snapshot) in
            let msg = MessagesDetails.Messages.MessagesViewModel(snapshot: snapshot)
            self.presenter?.receiveMsg(newMsg: msg)
        }
    }

    func fetch(request: MessagesDetails.Messages.MessagesRequest) {
        
        // Fazemos o fetch na classe worker
        // work.fetch() ...
        // Quando temos o resultado chamamos a presenter:
        //self.presenter.present(response: responseData)
    }
    
    func sendMessage(msg: MessagesDetails.Messages.MessagesViewModel) {
        worker.storeMessage(msg: msg)
    }
    
    //func store(objectToStore object: MessagesEntity.MessagesData) {
        
    //}
}
