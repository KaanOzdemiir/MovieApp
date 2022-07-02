//
//  MovieAppTests.swift
//  MovieAppTests
//
//  Created by Kaan Ozdemir on 1.07.2022.
//

import XCTest
@testable import MovieApp
import API

class MovieAppTests: XCTestCase {

    let dataProvider = APIDataProvider.shared
    
    func testPopularTVShowsRequest() {
        let requestExpectation = expectation(description: "requestExpectation")
        let request = PopularTVShowsRequest()
        
        dataProvider.request(for: request) { result in
            switch result {
            case .success(let response):
                let isResultsEmpty = response.results?.isEmpty ?? true
                isResultsEmpty ? XCTFail() : XCTAssertNotNil(response)
            case .failure(let error):
                print(error.localizedDescription)
            }
            requestExpectation.fulfill()
        }
        
        wait(for: [requestExpectation], timeout: 5)
    }
}
