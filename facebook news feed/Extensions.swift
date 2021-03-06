//
//  Extensions.swift
//  facebook news feed
//
//  Created by Nerimene  on 14/05/2018.
//  Copyright © 2018 Nerimene . All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    static func returnRGBColor(r:CGFloat, g:CGFloat, b:CGFloat, alpha:CGFloat) -> UIColor
    {
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: alpha)
    }
}

extension UIView {
    
    func addConstraintsWithFormat(format:String, views: UIView...)
    {
        var viewsDictionary = [String:UIView]()
        for (index, view) in views.enumerated(){
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: viewsDictionary))
    }

}
