//
//  UIView+Load.swift
//  TechmagicAppTemplate
//
//  Created by Alex Kunitsa on 6/7/16.
//  Copyright © 2016 TechMagic. All rights reserved.
//

import UIKit

extension UIView {
    
    class func loadView(nibName: String) -> UIView? {
        var loadedView: UIView?
        if let views = NSBundle.mainBundle().loadNibNamed(nibName, owner: nil, options: nil) {
            loadedView = views.last as? UIView
        }
        
        return loadedView
    }
}
