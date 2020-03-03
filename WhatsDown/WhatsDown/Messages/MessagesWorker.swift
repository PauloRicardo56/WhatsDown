//
//  MessagesWorker.swift
//  WhatsDown
//
//  Created by Paulo Ricardo on 3/2/20.
//  Copyright © 2020 Paulo Ricardo. All rights reserved.
//

import Foundation
import Firebase


class MessagesWorker {
    
    let ref = Database.database().reference(withPath: "messages")
    
    func storeMessage(msg: MessagesDetails.Messages.MessagesViewModel) {
        
        let msgRef = ref.childByAutoId()
        msgRef.setValue(msg.toDictionary())
    }
    
    
    func msgOberver(newMsg: @escaping (DataSnapshot) -> Void) {
        ref.observe(.childAdded) { (snapshot) in
            newMsg(snapshot)
        }
    }
}
