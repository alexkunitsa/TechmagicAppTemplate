//
//  UserAPI.swift
//  TechmagicAppTemplate
//
//  Created by Alex Kunitsa on 6/6/16.
//  Copyright © 2016 TechMagic. All rights reserved.
//

import Foundation

class UserAPI: BaseAPI, UserDataManagerProtocol {
    
    func logout(success: SuccessCallback, failure: FailureCallback) {
        success()
    }
}