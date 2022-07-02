//
//  UIColor+Extensions.swift
//  Helpers
//
//  Created by Kaan Ozdemir on 1.07.2022.
//

import UIKit

public extension UIColor {
    class var random: UIColor {
        UIColor(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            alpha: 1.0
        )
    }
    
    class var basic900: UIColor {
        UIColor(red: 13.0 / 255.0, green: 19.0 / 255.0, blue: 33.0 / 255.0, alpha: 1.0)
    }
    
    class var basic400: UIColor {
        UIColor(red: 199.0 / 255.0, green: 200.0 / 255.0, blue: 203.0 / 255.0, alpha: 1.0)
    }
    
    class var basic600: UIColor {
        UIColor(red: 127.0 / 255.0, green: 128.0 / 255.0, blue: 131.0 / 255.0, alpha: 1.0)
    }
}
