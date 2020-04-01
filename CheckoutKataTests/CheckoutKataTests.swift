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
    
    class Checkout {
          var total = 0
          
          var inventory = ["A":50]
          
          func checkoutItem(itemSku: String) {
              if let price = inventory[itemSku] {
                  total += price
              }
          }
      }
    
    func testGivenAnItem_WhenCheckedOut_ThenItemPriceIsAddedToTotal(){
        
  
        
        let checkout = Checkout()
        
        checkout.checkoutItem(itemSku: "A")
        let actualTotal = checkout.total
        let expectedTotal = 50
        
        XCTAssertEqual(expectedTotal, actualTotal)
    }
    
    func testGivenAnItemNotRecognised_WhenCheckedOut_ThenItemPriceIsNotAddedToTotal(){
        
        let checkout = Checkout()
        
        checkout.checkoutItem(itemSku: "")

        let actualTotal = checkout.total
        let expectedTotal = 0
        
        //this  should probably error!!
        //need to add an else?
        XCTAssertEqual(expectedTotal, actualTotal)
    }
    
    
}


