//
//  KayakTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/15/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class KayakTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let quora = Applications.Kayak()
        XCTAssertEqual(quora.scheme, "kayak:")
        XCTAssertEqual(quora.fallbackURL, "https://www.kayak.ae/")
    }
    
    func testOpen() {
        
        let action = Applications.Kayak.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
