//
//  MessagesViewController.swift
//  WhatsDown
//
//  Created by Paulo Ricardo on 3/2/20.
//  Copyright © 2020 Paulo Ricardo. All rights reserved.
//

import UIKit

/// Messages Module View
class MessagesViewController: UIViewController {
    
    var interactor: (MessagesInteractorProtocol & MessagesDataStore)?
    var coordinator: MessagesCoordinatorProtocol?
    var object: MessagesDetails.Messages.MessagesViewModel?
    
    var messages: [MessagesDetails.Messages.MessagesViewModel] = []
    
    //MARK: - Outles:
    
    @IBOutlet var msgTable: UITableView!
    @IBOutlet var msgTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        msgTable.register(MessagesTableViewCell.self, forCellReuseIdentifier: "cell")
        msgTable.dataSource = self
        msgTable.delegate = self
    }
    
    
    func setup() {
        
        let presenter = MessagesPresenter()
        presenter.viewController = self
        
        let interactor = MessagesInteractor()
        interactor.presenter = presenter
        self.interactor = interactor
        
        let router = MessagesRouter(navigationController: self.navigationController)
        self.coordinator = MessagesCoordinator(router: router, view: self)
        
        router.dataStore = interactor
    }
    
    
    func fetch() {
//        let request = MessagesDetails.Messages.MessagesRequest()
//        interactor?.fetch(request: request)
    }
    
    
    //MARK: - Actions:
    
    @IBAction func send(_ sender: Any) {
        
        if !msgTextField.text!.isEmpty {
            let msg = MessagesDetails.Messages.MessagesViewModel(body: msgTextField.text!)
            interactor?.sendMessage(msg: msg)
        }
    }
}

// MARK: - implementing MessagesViewProtocol
extension MessagesViewController: MessagesViewControllerProtocol {
    
    func set(viewModel: MessagesDetails.Messages.MessagesViewModel) {
        messages.append(viewModel)
        self.msgTable.reloadData()
    }
}


extension MessagesViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MessagesTableViewCell
        cell.message.text = messages[indexPath.row].body
        cell.user.text = interactor?.usrName
        return cell
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        let cell = tableView.cellForRow(at: indexPath)
//        for i in cell!.subviews {
//            if i.tag == 56 {
//                return i.frame.height + 44
//            }
//        }
//        return -1
//    }
}
