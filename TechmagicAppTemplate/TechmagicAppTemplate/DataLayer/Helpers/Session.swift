//
//  Session.swift
//  TechmagicAppTemplate
//
//  Created by Alex Kunitsa on 6/7/16.
//  Copyright © 2016 TechMagic. All rights reserved.
//

import Foundation

class Session {
    
    static let sharedInstance = Session()
    
    /// Used for enabled and disabled logs
    let isDebugMode = true
    
    var currentUser: User?
}