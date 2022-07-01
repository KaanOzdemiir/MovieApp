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
}
