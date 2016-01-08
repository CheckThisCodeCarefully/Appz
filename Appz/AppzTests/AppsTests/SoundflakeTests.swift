//
//  SoundflakeTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class SoundflakeTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let quora = Applications.Soundflake()
        XCTAssertEqual(quora.scheme, "soundflake:")
        XCTAssertEqual(quora.fallbackURL, "http://soundflakeapp.com")
    }
    
    func testOpen() {
        
        let action = Applications.Soundflake.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}