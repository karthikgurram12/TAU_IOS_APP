//
//  TAUSteps.swift
//  TAUUITests
//
//  Created by karthik gurram on 24/09/24.
//  Copyright © 2024 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

extension BDDTest {
    func givenAppIsReady() {
        //sprinkle the reporting
        //there are certain tools to convert xcode reporting to html for better reporting
        XCTContext.runActivity(named: "Given App is Ready") { _ in XCTAssertTrue(TAUScreen.enrollButton.element.exists)}
        
    }
    
    func whenIEnter(city: String) {
        XCTContext.runActivity(named: "When I Enter the City") { _ in
            TAUScreen.cityTextField.element.tap()
            TAUScreen.cityTextField.element.typeText("London")
        }
    }
    
    func whenIEnrolled() {
        XCTContext.runActivity(named: "When I Enrolled") { _ in  TAUScreen.enrollButton.element.tap()}
    }
    
    func thenIShouldSeeThankYouMessage() {
        XCTContext.runActivity(named: "Given App is Ready") { _ in XCTAyncAssert(TAUScreen.thankYouMessage.element)}
    }
}

