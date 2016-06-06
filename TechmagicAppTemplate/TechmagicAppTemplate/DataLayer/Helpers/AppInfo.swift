//
//  AppInfo.swift
//  TechmagicAppTemplate
//
//  Created by Alex Kunitsa on 6/7/16.
//  Copyright © 2016 TechMagic. All rights reserved.
//

import Foundation

class AppInfo {
    
    static func version() -> String {
        return (NSBundle.mainBundle().infoDictionary?["CFBundleShortVersionString"] as? String) ?? ""
    }
}