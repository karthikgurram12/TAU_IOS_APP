//
//  TAUUITests.swift
//  TAUUITests
//
//  Created by karthik gurram on 08/09/24.
//  Copyright © 2024 Shashikant Jagtap. All rights reserved.
//

import XCTest

final class TAUUITests: TAUUITestBase {

    func testExample() throws {
        let textField = app.textFields["city"]
        textField.tap()
        textField.typeText("tirupati") // Enter new text
        
        let enrollStaticText = app/*@START_MENU_TOKEN@*/.staticTexts["Enroll"]/*[[".buttons[\"Enroll\"].staticTexts[\"Enroll\"]",".buttons[\"enrollButton\"].staticTexts[\"Enroll\"]",".staticTexts[\"Enroll\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        enrollStaticText.tap()
        XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)
    }
    
    func testNegitiveExample() throws {
        let textField = app.textFields["city"]
        textField.tap()
        
        app/*@START_MENU_TOKEN@*/.staticTexts["Enroll"]/*[[".buttons[\"Enroll\"].staticTexts[\"Enroll\"]",".buttons[\"enrollButton\"].staticTexts[\"Enroll\"]",".staticTexts[\"Enroll\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssertTrue(app.staticTexts["Please Enter City"].exists)
    }
    
    func testdebugArea() throws {
        
    }
}
