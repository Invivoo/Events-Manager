//
//  EventListViewControllerTests.swift
//  events managerTests
//
//  Created by Nicolas Erny on 23/12/2018.
//  Copyright © 2018 Invivoo. All rights reserved.
//

import XCTest
@testable import events_manager

class EventListViewControllerTests: XCTestCase {
    
    var vc: EventListViewController?
    
    override func setUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        self.vc = storyboard.instantiateViewController(withIdentifier: "EventListViewController") as? EventListViewController
        XCTAssertNotNil(self.vc, "Cannot initialize EventListViewController")
        self.vc!.viewDidLoad()
        XCTAssertNotNil(self.vc!.view, "Problem initializing view")
    }
    
    func testNumberOfRows() {
        XCTAssertEqual(self.vc!.tableView.numberOfRows(inSection: 0), 3)
    }
    
    func testCellRowAt() {
        let cell = self.vc!.tableView(self.vc!.tableView, cellForRowAt: IndexPath(row: 0, section: 0))
        XCTAssertEqual(cell.textLabel?.text, "Event1")
        
    }
    
}
