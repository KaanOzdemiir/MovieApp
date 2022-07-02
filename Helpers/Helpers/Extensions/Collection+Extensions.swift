//
//  Collection+Extensions.swift
//  Helpers
//
//  Created by Kaan Ozdemir on 2.07.2022.
//

public extension Collection {
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
