//
//  Endpoint.swift
//  TechmagicAppTemplate
//
//  Created by Alex Kunitsa on 6/7/16.
//  Copyright © 2016 TechMagic. All rights reserved.
//

import Foundation

enum Endpoint {
    
    case SignIn
    case SignUp

    // Public
    
    func link() -> String {
        return link(params: nil)
    }
    
    func link(params params: [AnyObject]?) -> String {
        switch self {
        case SignIn:
            return cleanURL("\(baseURL())/signin")
        case SignUp:
            return cleanURL("\(baseURL())/signup")
        }
    }
    
    // MARK: - Private
    
    private func cleanURL(url: String) -> String {
        return url.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet()) ?? url
    }
    
    private func baseURL() -> String {
        return "put url here"
    }
}