//
//  UserDataManager.swift
//  TechmagicAppTemplate
//
//  Created by Alex Kunitsa on 6/6/16.
//  Copyright © 2016 TechMagic. All rights reserved.
//

import Foundation

protocol UserDataManagerProtocol {
    
    func logout(success: SuccessCallback, failure: FailureCallback)
}

class UserDataManager {
    
    let currentHandler = UserMock()
    
    func logout(success: SuccessCallback, failure: FailureCallback) {
        currentHandler.logout({
            // Do additional actions after logout success
            success()
        }) { (errorText) in
            failure(errorText: errorText)
        }
    }
}