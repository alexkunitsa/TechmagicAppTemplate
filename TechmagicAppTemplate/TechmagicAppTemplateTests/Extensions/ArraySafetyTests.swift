//
//  ArraySafetyTests.swift
//  TechmagicAppTemplate
//
//  Created by Alex Kunitsa on 6/7/16.
//  Copyright © 2016 TechMagic. All rights reserved.
//

import XCTest
@testable import TechmagicAppTemplate

class ArraySafetyTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testEmptyArraySafeGetFirst() {
        let array = [String]()
        XCTAssertNil(array.safelyGet(0), "Nil was not returned from empty array get")
    }
    
    func testEmptyArraySafeGet() {
        let array = [String]()
        XCTAssertNil(array.safelyGet(5), "Nil was not returned from empty array get")
    }
    
    func testArraySafeGetFirst() {
        let array = ["test", "test", "test"]
        XCTAssertNotNil(array.safelyGet(0), "Nil was returned while get from valid array")
    }
    
    func testArraySafeGetLast() {
        let array = ["test", "test", "test"]
        XCTAssertNotNil(array.safelyGet(2), "Nil was returned while get from valid array")
    }
    
    func testArraySafeGetOverLimit() {
        let array = ["test", "test", "test"]
        XCTAssertNil(array.safelyGet(10), "Nil was not returned while get over limit")
    }
}
