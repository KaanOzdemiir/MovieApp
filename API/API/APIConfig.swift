//
//  APIConfig.swift
//  API
//
//  Created by Kaan Ozdemir on 2.07.2022.
//

import Foundation

struct APIConfig {
    
    static var host: String {
        "api.themoviedb.org"
    }
    
    static var version: String {
        "/3"
    }
    
    static var apiKey: String {
        (Bundle.main.infoDictionary?["API_KEY"] as? String) ?? ""
    }
}
