//
//  DataProvider.swift
//  API
//
//  Created by Kaan Ozdemir on 1.07.2022.
//

import Foundation

public typealias DataProviderResult<R: Decodable> = (Swift.Result<R, Error>) -> Void
public protocol DataProviderProtocol {
    func request<R: RequestProtocol>(for request: R, result: DataProviderResult<R.ResponseType>?)
}
