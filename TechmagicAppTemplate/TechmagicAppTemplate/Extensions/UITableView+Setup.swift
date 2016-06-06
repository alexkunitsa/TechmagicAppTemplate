//
//  UITableView+Setup.swift
//  TechmagicAppTemplate
//
//  Created by Alex Kunitsa on 6/7/16.
//  Copyright © 2016 TechMagic. All rights reserved.
//

import UIKit

extension UITableView {
    
    func registerNibs(names: [String]) {
        names.forEach { (name) in
            self.registerNib(UINib(nibName: name, bundle: nil), forCellReuseIdentifier: name)
        }
    }
}