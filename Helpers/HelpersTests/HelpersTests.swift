//
//  HelpersTests.swift
//  HelpersTests
//
//  Created by Kaan Ozdemir on 1.07.2022.
//

import XCTest
@testable import Helpers

class HelpersTests: XCTestCase {

    func testDateFormatHelper() {
        let formattedDate = DateFormatHelper.format("2022-07-02", from: .yyyy__MM__dd, to: .d_MMMM_yyyy)
        XCTAssertEqual(formattedDate, "2 Temmuz 2022")
    }
}
