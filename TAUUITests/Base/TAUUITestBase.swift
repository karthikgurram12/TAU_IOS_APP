//
//  TAUUITestBase.swift
//  TAUUITests
//
//  Created by karthik gurram on 23/09/24.
//  Copyright © 2024 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

class TAUUITestBase: XCTestCase {
    
    var app = XCUIApplication()
    
    override class func setUp() {
        super.setUp()
        // This is called once for the entire test suite
        // You can also use class-level setup if needed
    }

    override func setUpWithError() throws {
        // Call the superclass's setup method
        try super.setUpWithError()
        
        // Initialize the app instance
        app = XCUIApplication()
                
        // Launch the app only once for the entire test suite
        // Launch the app only once for all tests
        app.launch()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
    }
    
    func XCTAyncAssert(_ element: XCUIElement){
        let isElementExist = element.waitForExistence(timeout: 10)
        if isElementExist{
            XCTAssertTrue(element.exists)
        }
    }
}
