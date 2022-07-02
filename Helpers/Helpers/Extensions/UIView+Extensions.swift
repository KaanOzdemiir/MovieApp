//
//  UIView+Extensions.swift
//  Helpers
//
//  Created by Kaan Ozdemir on 2.07.2022.
//

import UIKit

public extension UIView {
    func applyGradient(isVertical: Bool, colorArray: [UIColor]) {
        layer.sublayers?.filter({ $0 is CAGradientLayer }).forEach({ $0.removeFromSuperlayer() })
         
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = colorArray.map({ $0.cgColor })
        if isVertical {
            //top to bottom
            gradientLayer.locations = [0.0, 1.0]
        } else {
            //left to right
            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        }
        
        backgroundColor = .clear
        gradientLayer.frame = .init(x: bounds.origin.x, y: bounds.origin.y, width: bounds.width + 50, height: bounds.height / 1.5)
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
