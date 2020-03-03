//
//  MessagesCoordinator.swift
//  WhatsDown
//
//  Created by Paulo Ricardo on 3/2/20.
//  Copyright © 2020 Paulo Ricardo. All rights reserved.
//

import UIKit


class MessagesCoordinator: MessagesCoordinatorProtocol {
    
    var router: MessagesRouter!
    weak var view: MessagesViewController?
    
    init(router: MessagesRouter, view: MessagesViewController) {
        self.router = router
        self.view = view
    }
    
    
    func start() {
        /// Método instantiate vem do protocol Storyboarded criado.
        //let vc = viewControllers["Main"]
        
        /// Poderemos chamar a navigationController da Router
        /// diretamente quando não precisamos passar dados?
        //self.router.navigationController.pushViewController(vc, animated: false)
    }
    
    
    func present(vcName: ViewsNames) {
        
        guard let view = view?.storyboard?.instantiateViewController(withIdentifier: vcName.rawValue) else { return }
        
        /// O papel do Coordinator é apenas instanciar as views e saber quando irá mostrá-las,
        /// se quisermos passar dados de uma view para outra fazemos isso no Router. Aqui
        /// determinamos qual viewController iá aprecer de acordo com a viewControllerName,
        /// daí chamaríamos o método do router para essa view, método é onde passaríamos
        /// os dados. Exemplo:
        /// router.presentViewController1(object: SomeObjectType, vcToShow: view)
    }
}
