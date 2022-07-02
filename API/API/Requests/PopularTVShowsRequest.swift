//
//  PopularTVShowsRequest.swift
//  API
//
//  Created by Kaan Ozdemir on 1.07.2022.
//

import Foundation

public struct PopularTVShowsRequest: RequestProtocol {
    public typealias ResponseType = TVShowResponse
    
    public var path: String = "tv/popular"
    
    public var headers: RequestHeaders = [:]
    
    public var parameters: RequestParameters = [:]
    
    public var method: RequestMethod = .get
    
    public var encoding: RequestEncoding = .url
    
    public init() { }
}
