//
//  events_managerUITests.swift
//  events managerUITests
//
//  Created by Nicolas Erny on 22/12/2018.
//  Copyright © 2018 Invivoo. All rights reserved.
//

import XCTest

class events_managerUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    func testBasicNavigation() {
        let app = XCUIApplication()
        let eventsTable = app.tables["eventListTable"]
        eventsTable/*@START_MENU_TOKEN@*/.staticTexts["Event1"]/*[[".cells.staticTexts[\"Event1\"]",".staticTexts[\"Event1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        if UIDevice.current.userInterfaceIdiom == .phone{
            app.navigationBars["Event"].buttons["Events Manager"].tap()
        }
    }

}
