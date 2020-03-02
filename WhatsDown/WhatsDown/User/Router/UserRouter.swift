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
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    
    // Aqui implementaremos as funções de showModule/showView, exemplo:
    // func presentViewController1(object: SomeObject, vcToShow: Vc) {
    //    // No caso dessa vc precisaremos passar dados para ela,
    //    // por isso o parâmetro object.
    //    vcToShow.name = object.name
    //    vcToShow.year = object.year
    //    navigationController.pushViewController(vcToShow, animated: true)
    
    func routeToSomewhere() {
        //
    }
    
    // MARK: - Transferência de dados
    func transferData() {
        
    }
}
