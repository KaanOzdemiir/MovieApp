//
//  AlamofireRequestConverter.swift
//  MovieApp
//
//  Created by Kaan Ozdemir on 2.07.2022.
//

import Alamofire
import API

struct AlamofireRequestConverter {
    let url: String
    let headers: HTTPHeaders
    let parameters: Parameters
    let method: HTTPMethod
    let encoding: ParameterEncoding

    init<R: RequestProtocol>(_ request: R) {
        self.url = request.url
        self.headers = HTTPHeaders(request.headers)
        self.parameters = request.parameters
        self.method = request.method.toAlamofireMethod
        self.encoding = request.encoding.toAlamofireParameterEncoding
    }
    
}

extension RequestMethod {
    var toAlamofireMethod: HTTPMethod {
        switch self {
        case .get:
            return .get
        case .post:
            return .post
        case .put:
            return .put
        }
    }
}

extension RequestEncoding {
    var toAlamofireParameterEncoding: ParameterEncoding {
        switch self {
        case .json:
            return JSONEncoding.default
        case .url:
            return URLEncoding.default
        }
    }
}
