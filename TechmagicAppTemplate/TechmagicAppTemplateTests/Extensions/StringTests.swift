//
//  StringTests.swift
//  TechmagicAppTemplate
//
//  Created by Alex Kunitsa on 6/7/16.
//  Copyright © 2016 TechMagic. All rights reserved.
//

import XCTest
@testable import TechmagicAppTemplate

class StringTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    // MARK: -
    
    func testTrim() {
        let input = "    qrerere    "
        XCTAssertEqual("qrerere", input.trim(), "String was not trimmed")
    }
    
    func testTrim2() {
        let input = "    qrer  ere    "
        XCTAssertEqual("qrer  ere", input.trim(), "String was not trimmed correct")
    }
}
