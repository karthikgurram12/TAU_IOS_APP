//
//  TAUElements.swift
//  TAUUITests
//
//  Created by karthik gurram on 24/09/24.
//  Copyright © 2024 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

enum TAUScreen: String, CaseIterable {
    case welcomeMessage = "welcomeMessage"
    case taulogo = "TAUlogo"
    case enterCityLabel = "enterCity"
    case cityTextField = "city"
    case enrollButton = "enrollButton"
    case thankYouMessage = "Thanks for Joining!"
    case errorMessage = "Please Enter City"
    
    var element: XCUIElement {
        switch self {
        case .welcomeMessage, .enterCityLabel, .thankYouMessage, .errorMessage:
            return XCUIApplication().staticTexts[self.rawValue]
        case .cityTextField:
            return XCUIApplication().textFields[self.rawValue]
        case .enrollButton:
            return XCUIApplication().buttons[self.rawValue]
        case .taulogo:
            if UIDevice.current.userInterfaceIdiom == .pad {
                return XCUIApplication().images["TAUlogo_pad"]
            }else {
                return XCUIApplication().images[self.rawValue]
            }
        }
    }
}

