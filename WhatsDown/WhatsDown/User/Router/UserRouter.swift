//
//  UserRouter.swift
//  WhatsDown
//
//  Created by Paulo Ricardo on 3/1/20.
//  Copyright © 2020 Paulo Ricardo. All rights reserved.
//

import UIKit

/// User Module Router (aka: Wireframe)
class UserRouter: NSObject, UserRouterProtocol, UserDataPassing {
    
    var viewController: UserViewController?
    var dataStore: UserDataStore?
    
    
    func routeToSomewhere() {
        
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
//        let destinationDS = destinationVC.router!.dataStore!
//        passDataToSomewhere(source: dataStore!, destination: &destinationDS)
//        navigateToSomewhere(source: viewController, destination: destinationVC)
        
    }
    
    
    // MARK: - Navigation
//    func navigateToSomewhere(source: UserViewController, destination: SomewhereViewController) {
//        //source.show(destination)
//    }
//    
//    // MARK: - Pass Data
//    func passDataToSomewhere(source: UserViewController, destination: inout SomewhereViewController) {
//        //source.name = destination.name
//        //source.age = destination.age
//    }
}
