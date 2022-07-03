//
//  APIDataProvider.swift
//  MovieApp
//
//  Created by Kaan Ozdemir on 2.07.2022.
//

import API
import Alamofire

class APIDataProvider: DataProviderProtocol {
    
    static let shared = APIDataProvider()
    private let session = Session()
    
    func request<R: RequestProtocol>(for request: R, result: DataProviderResult<R.ResponseType>?) {
        let afRequest = AlamofireRequestConverter(request)
        
        session.request(
            afRequest.url,
            method: afRequest.method,
            parameters: afRequest.parameters,
            encoding: afRequest.encoding,
            headers: afRequest.headers
        )
        .validate()
        .responseDecodable(of: R.ResponseType.self, completionHandler: { response in
            switch response.result {
            case .success(let value):
                result?(.success(value))
            case .failure(let error):
                result?(.failure(error))
            }
        })
    }
}
