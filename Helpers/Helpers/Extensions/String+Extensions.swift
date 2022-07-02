//
//  String+Extensions.swift
//  Helpers
//
//  Created by Kaan Ozdemir on 2.07.2022.
//

import UIKit

public extension String {
    func attributedStringWithColor(attributes: [(string: String, color: UIColor, font: UIFont)]) -> NSAttributedString {
        let attributedString = NSMutableAttributedString(string: self)
        var i = 0
        for attribute in attributes {
            let range = (self as NSString).range(of: attribute.string)
            attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: attribute.color, range: range)
            attributedString.addAttribute(.font, value: attribute.font, range: range)
            i += 1
        }
        return attributedString
    }
}
