//
//  Contact.swift
//  Contacts-Hybrid
//
//  Created by Austin Potts on 3/23/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import Foundation

// Swift struct cannot be used in Objective-C
// All Swift classes must subclass NSObject to be visible in object c
//All symbols that you want to use need to be marked up with special annotation @ObjC
//Enums with associated types cannot be used in Obj C

@objc class Contact: NSObject {
    
    
    var name: String
    var relationship: String?
    
    @objc init(name: String, relationship: String){
        self.name = name
        self.relationship = relationship
    }
    
    
}
