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
    weak var view: UserViewController?
    
    init(router: UserRouter, view: UserViewController) {
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
    
    
    func presentSignUp() {
                
        guard let view = self.view?.storyboard?.instantiateViewController(withIdentifier: ViewsNames.signIn.rawValue) as? SignUpViewController else { return }
        view.interactor = self.view?.interactor as? (NSObjectProtocol & UserDataStore & UserInteractorProtocol)
        router.routeToSignUp(vc: view, email: self.view!.email.text!)
    }
        
        
    func presentMessengers() {
        
        guard let view = self.view?.storyboard?.instantiateViewController(withIdentifier: ViewsNames.messages.rawValue) as? MessagesViewController else { return }
        view.interactor = self.view?.interactor as? (NSObjectProtocol & MessagesDataStore & MessagesInteractorProtocol)
        view.setup()
        router.routeToMessages(vc: view)
    }
        
        
        //guard let view = viewControllers[viewControllerName]
        /// O papel do Coordinator é apenas instanciar as views e saber quando irá mostrá-las,
        /// se quisermos passar dados de uma view para outra fazemos isso no Router. Aqui
        /// determinamos qual viewController iá aprecer de acordo com a viewControllerName,
        /// daí chamaríamos o método do router para essa view, método é onde passaríamos
        /// os dados. Exemplo:
        /// router.presentViewController1(object: SomeObjectType, vcToShow: view)
}
