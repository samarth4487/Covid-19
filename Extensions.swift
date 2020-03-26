//
//  Extensions.swift
//  Covid-19
//
//  Created by Samarth Paboowal on 26/03/20.
//  Copyright © 2020 Samarth. All rights reserved.
//

import UIKit

extension NSMutableAttributedString {
    
    @discardableResult func custom(_ text: String, font: UIFont, color: UIColor) -> NSMutableAttributedString {
        
        let attrs:[NSAttributedString.Key:AnyObject] = [NSAttributedString.Key(rawValue: NSAttributedString.Key.font.rawValue) : font]
        let normalString = NSMutableAttributedString(string:"\(text)", attributes:attrs)
        normalString.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: NSRange(location: 0, length: normalString.length))
        self.append(normalString)
        
        return self
    }
}
