//
//  GroupeMeTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/7/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class GroupeMeTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let quora = Applications.GroupeMe()
        XCTAssertEqual(quora.scheme, "groupme:")
        XCTAssertEqual(quora.fallbackURL, "https://groupme.com")
    }
    
    func testOpen() {
        
        let action = Applications.GroupeMe.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
