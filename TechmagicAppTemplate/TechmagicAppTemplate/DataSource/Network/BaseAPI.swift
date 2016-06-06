//
//  BaseAPI.swift
//  TechmagicAppTemplate
//
//  Created by Alex Kunitsa on 6/7/16.
//  Copyright © 2016 TechMagic. All rights reserved.
//

import Foundation

enum RequetMethod {
    case GET
    case POST
    case PUT
    case DELETE
}

class BaseAPI {
    
    typealias RequestCallback = (statusCode: Int, errorText: String?, data: NSData?) -> ()
    
    // MARK: - Public
    
    func GET(let path: String, params: [String : AnyObject]?, callback: RequestCallback) {
        return generalRequest(.GET, path: path, params: params, callback: callback)
    }
    
    func POST(let path: String, params: [String : AnyObject]?, callback: RequestCallback) {
        return generalRequest(.POST, path: path, params: params, callback: callback)
    }
    
    func PUT(let path: String, params: [String : AnyObject]?, callback: RequestCallback) {
        return generalRequest(.PUT, path: path, params: params, callback: callback)
    }
    
    func DELETE(let path: String, params: [String : AnyObject]?, callback: RequestCallback) {
        return generalRequest(.DELETE, path: path, params: params, callback: callback)
    }
    
    // MARK: - Private
    
    private func generalRequest(method: RequetMethod, let path: String, params: [String : AnyObject]?, callback: RequestCallback) {
        // TODO - implement
    }
}