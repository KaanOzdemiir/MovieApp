//
//  Optional+Extensions.swift
//  Helpers
//
//  Created by Kaan Ozdemir on 2.07.2022.
//

public extension Optional where Wrapped == Int {
    var stringValue: String {
        switch self {
        case .none:
            return ""
        case .some(let wrapped):
            return "\(wrapped)"
        }
    }
}

public extension Optional where Wrapped == String {
    var fixedPath: String {
        switch self {
        case .none:
            return ""
        case .some(let wrapped):
            return "https://image.tmdb.org/t/p/w500/\(wrapped)"
        }
    }
}

public extension Optional where Wrapped == Double {
    var stringValue: String {
        switch self {
        case .none:
            return ""
        case .some(let wrapped):
            return "\(wrapped)"
        }
    }
    
    var isNil: Bool {
        self == nil
    }
}
