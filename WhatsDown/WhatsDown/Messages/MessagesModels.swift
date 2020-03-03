//
//  MessagesModels.swift
//  WhatsDown
//
//  Created by Paulo Ricardo on 3/2/20.
//  Copyright © 2020 Paulo Ricardo. All rights reserved.
//

import UIKit
import Firebase


enum MessagesDetails {
    
    enum Messages {
        
        /// Parâmetros necessários para fazer a reques na API
        struct MessagesRequest {
            
        }
        
        
        /// Utilizada para armazenar os dados apropriados da resposta da API.
        struct MessagesResponse {
            
        }
        
        
        /// A parte que iremos mostrar na UI. Exemplo, se nossa API
        /// retorna objetos com 10 parâmetros e só precisamos mostrar 4.
        struct MessagesViewModel {
            var body: String
            
            init(body: String) {
                self.body = body
            }
            
            
            init(snapshot: DataSnapshot) {
                if let msg = snapshot.value as? [String:AnyObject] {
                    self.body = msg["body"] as! String
                } else {
                    self.body = "Error"
                }
                
            }
            
            func toDictionary() -> Any {
                return [
                    "body": body
                ]
            }
        }
    }
}
