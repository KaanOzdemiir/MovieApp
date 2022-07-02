//
//  RequestProtocol.swift
//  API
//
//  Created by Kaan Ozdemir on 1.07.2022.
//

public protocol RequestProtocol {
    associatedtype ResponseType: Decodable
    var path: String { get }
    var headers: RequestHeaders { get }
    var parameters: RequestParameters { get }
    var method: RequestMethod { get }
    var encoding: RequestEncoding { get }
}

public extension RequestProtocol {
    var url: String {
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = APIConfig.host
        urlComponents.path = [APIConfig.version, path].joined(separator: "/")
        urlComponents.queryItems = [
            URLQueryItem(name: "api_key", value: APIConfig.apiKey)
        ]
        return urlComponents.string ?? ""
    }
}
