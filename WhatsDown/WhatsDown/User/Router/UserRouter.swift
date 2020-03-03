//
//  UserRouter.swift
//  WhatsDown
//
//  Created by Paulo Ricardo on 3/1/20.
//  Copyright © 2020 Paulo Ricardo. All rights reserved.
//

import UIKit

/// User Module Router (aka: Wireframe)
class UserRouter: UserRouterProtocol, UserDataPassing {
    
    var navigationController: UINavigationController
    var dataStore: UserDataStore?
    var msgDataStore: MessagesDataStore?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    
    //MARK: - Route to View's
    func routeToSignUp(vc: SignUpViewController, email: String) {
        signInTransferData(email: email)
        navigationController.show(vc, sender: nil)
    }
    
    
    func routeToMessages(vc: MessagesViewController) {
        msgTransferData(sourceDS: msgDataStore!, destinationDS: &vc.coordinator!.router.dataStore!)
        navigationController.show(vc, sender: nil)
    }
    
    
    // MARK: - Data transfer
    func signInTransferData(email: String) {
        dataStore?.email = email
    }
    
    
    func msgTransferData(sourceDS: MessagesDataStore, destinationDS: inout MessagesDataStore) {
        destinationDS.usrName = sourceDS.usrName
    }
}
