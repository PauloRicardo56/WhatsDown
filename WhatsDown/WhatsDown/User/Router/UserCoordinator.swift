//
//  UserCoordinator.swift
//  WhatsDown
//
//  Created by Paulo Ricardo on 3/1/20.
//  Copyright © 2020 Paulo Ricardo. All rights reserved.
//

import UIKit


class UserCoordinator: UserCoordinatorProtocol {
    
    var router: UserRouter!
    
    /// Instanciamos todas as viewControllers do fluxo da mainCoordinator,
    /// e identificamos cada uma com o nome de suas respectivas classes.
    var viewControllers = [String:UIViewController]()
    
    init(router: UserRouter) {
        self.router = router
    }
    
    
    func start() {
        /// Método instantiate vem do protocol Storyboarded criado.
        //let vc = viewControllers["Main"]
        
        /// Poderemos chamar a navigationController da Router
        /// diretamente quando não precisamos passar dados?
        //self.router.navigationController.pushViewController(vc, animated: false)
    }
    
    
    func present(viewControllerName: String) {
        
        //guard let view = viewControllers[viewControllerName]
        /// O papel do Coordinator é apenas instanciar as views e saber quando irá mostrá-las,
        /// se quisermos passar dados de uma view para outra fazemos isso no Router. Aqui
        /// poderiamos ter um switch para determinar qual viewController iá aprecer de acordo
        /// com a viewControllerName, daí chamríamos o método do router para essa view,
        /// nesse método é onde passaríamos os dados. Exemplo:
        /// switch (viewControllerName) {
        ///     case viewController1:
        ///         router.presentViewController1(object: SomeObjectType, vcToShow: view)
        /// ...
    }
}
