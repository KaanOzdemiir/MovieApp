//
//  UIDevice+Extensions.swift
//  Helpers
//
//  Created by Kaan Ozdemir on 2.07.2022.
//

import Foundation
import UIKit

public extension UIDevice {
    var isIPad: Bool {
        UIDevice.current.userInterfaceIdiom == .pad
    }
}
