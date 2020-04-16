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
    
    var inventory: [String : Int]!
    
    var checkout: Checkout!
    
    override func setUp() {
        super.setUp()
        
        inventory =  ["A": 50, "B": 30, "C": 20, "D": 15]
        checkout = Checkout(inventory: inventory)
        
        
    }
    
    func testGivenItemA_WhenCheckedOut_ThenTotalPriceIsCorrect(){
        
        checkout.scanItem(item: "A")
        
        XCTAssertEqual(50, checkout.total)
    }
    
    func testGivenItemB_WhenCheckedOut_ThenTotalPriceIsCorrect() {
        checkout.scanItem(item: "B")
        
        XCTAssertEqual(30, checkout.total)
    }
    
    func testGivenItemC_WhenCheckedOut_ThenTotalPriceIsCorrect(){
        checkout.scanItem(item: "C")
        
        XCTAssertEqual(20, checkout.total)
    }
    
    func testGivenItemD_WhenCheckedOut_ThenTotalPriceIsCorrect(){
        checkout.scanItem(item: "D")
        
        XCTAssertEqual(15, checkout.total)
    }
    
    func testWhenGivenARandomItem_WhenCheckedOut_ThenTotalPriceIsCorrect() {
        
        let randomItem = inventory.randomElement()
        checkout.scanItem(item: randomItem!.key)
        
        XCTAssertEqual(randomItem?.value, checkout.total)
        
    }
    
    func testGivenItemAandB_WhenCheckedOut_ThenTotalPriceIsCorrect(){
        checkout.scanItem(item: "A")
        checkout.scanItem(item: "B")
        
        XCTAssertEqual(80, checkout.total)
    }
    
    func testWhenGivenRandomItems_WhenCheckedOut_ThenTotalPriceIsCorrect() {
        let randomItem1 = inventory.randomElement()
        checkout.scanItem(item: randomItem1!.key)
        
        let randomItem2 = inventory.randomElement()
        checkout.scanItem(item: randomItem2!.key)
        
        let expectedResult = (randomItem1!.value) + (randomItem2!.value)
        
        XCTAssertEqual(expectedResult, checkout.total)
    }
    
    
    class Checkout {
        var total = 0
        var inventory: [String: Int]
        
        init(inventory: [String: Int]) {
            self.inventory = inventory
        }
        
        
        func scanItem(item: String) {
            guard let price = inventory[item] else { return }
            total += price
        }
    }
    
    
}


