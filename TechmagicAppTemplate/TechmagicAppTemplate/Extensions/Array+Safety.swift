//
//  Array+Safety.swift
//  TechmagicAppTemplate
//
//  Created by Alex Kunitsa on 6/7/16.
//  Copyright © 2016 TechMagic. All rights reserved.
//

import Foundation

extension Array {
    
    func safelyGet(index: Int) -> Element? {
        if 0 <= index && index < count {
            return self[index]
        } else {
            return nil
        }
    }
}

extension Array where Element: Equatable {
    
    func arrayRemovingObject(object: Element) -> [Element] {
        return filter { $0 != object }
    }
}
