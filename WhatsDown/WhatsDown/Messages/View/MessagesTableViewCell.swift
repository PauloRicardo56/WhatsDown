//
//  MessagesTableViewCell.swift
//  WhatsDown
//
//  Created by Paulo Ricardo on 3/2/20.
//  Copyright © 2020 Paulo Ricardo. All rights reserved.
//

import UIKit

class MessagesTableViewCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    var view: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    var message: UILabel = {
        let label = UILabel()
        label.tag = 56
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.font = .systemFont(ofSize: 16)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    var user: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 10)
        label.textColor = .black
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    func setup() {
        addSubview(view)
        view.addSubview(message)
        view.addSubview(user)
        
        NSLayoutConstraint.activate([
            view.leftAnchor.constraint(equalTo: leftAnchor, constant: 0),
            view.rightAnchor.constraint(equalTo: rightAnchor, constant: 0),
            view.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            message.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            message.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            message.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
            message.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            user.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            user.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            user.topAnchor.constraint(equalTo: message.bottomAnchor, constant: 0),
            user.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
}
