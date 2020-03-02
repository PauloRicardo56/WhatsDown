//
//  UserCoordinatorProtocol.swift
//  WhatsDown
//
//  Created by Paulo Ricardo on 3/1/20.
//  Copyright © 2020 Paulo Ricardo. All rights reserved.
//

import UIKit


protocol UserCoordinatorProtocol: AnyObject {
    
    /// É no Router que damos push e pops das View na navigation, e,
    /// quando necessário, fazemos transferências de dados dessas View's.
    var router: UserRouter! { get set }
    
    /// Instanciamos todas as viewControllers do fluxo da mainCoordinator,
    /// e identificamos cada uma com o nome de suas respectivas classes.
//    var viewControllers: [String : UIViewController] { get set }
    
    /// Aqui podemos ter vários diferentes coordinators, cada um com um fluxo de view's
    /// diferentes, como linear ou nominal(dependendo da ação, uma view diferente aprecerá).
    //var children: [Coordinator]
    
    /// Chamado no appDelegate didFinishLaunchingWithOptions
    /// Aqui é o ponto de partida, instanciamos e 'pushamos' a View inicial.
    func start()
    
    /// Parecido, mas não igual, ao start().
    /// Chamado pela Presenter (VIPER)/ViewModel (MVVM)
    func present(vcName: ViewsNames)
}
