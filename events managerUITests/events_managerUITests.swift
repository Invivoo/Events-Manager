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
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBasicNavigation() {
        let app = XCUIApplication()
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["Event1"]/*[[".cells.staticTexts[\"Event1\"]",".staticTexts[\"Event1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        if UIDevice.current.userInterfaceIdiom == .phone{
            app.navigationBars["Event"].buttons["Events Manager"].tap()
        }
    }

}
