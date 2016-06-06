//
//  NSDate+Format.swift
//  TechmagicAppTemplate
//
//  Created by Alex Kunitsa on 6/7/16.
//  Copyright © 2016 TechMagic. All rights reserved.
//

import Foundation

extension NSDate {
    
    func toString(format: String) -> String {
        let formatter = NSDateFormatter()
        formatter.locale = NSLocale.currentLocale()
        formatter.dateFormat = format
        
        return formatter.stringFromDate(self)
    }
}