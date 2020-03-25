//
//  CheckoutKataTests.swift
//  CheckoutKataTests
//
//  Created by Emma Walker - TVandMobile Platforms - Core Engineering on 25/03/2020.
//  Copyright © 2020 Emma Walker - TVandMobile Platforms - Core Engineering. All rights reserved.
//

import XCTest
@testable import CheckoutKata

class CheckoutKataTests: XCTestCase {


    func testGivenAnEmptyBasket_CalculatedTotalIsZero() {
        let basket = Basket()
        let actualTotal = basket.total
        let expectedTotal = 0
        
        XCTAssertEqual(expectedTotal, actualTotal)
    }
}

class Basket {
    var total = 0
}
