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
    
    func testGivenAnItem_WhenCheckedOut_ThenItemPriceIsAddedToTotal(){
        
        class Checkout {
            var total = 0
            
            func checkoutItem(itemSku: String) {
                total += 50
            }
        }
        
        let checkout = Checkout()
        
        checkout.checkoutItem(itemSku: "A")
        let actualTotal = checkout.total
        let expectedTotal = 50
        
        XCTAssertEqual(expectedTotal, actualTotal)
    }


}


