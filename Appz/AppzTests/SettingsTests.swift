//
//  SettingsTests.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 11/10/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import XCTest
@testable import Appz


class SettingsTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let appSettings = AvailableApplications.AppSettings()
        XCTAssertEqual(appSettings.scheme, "app-settings:")
        XCTAssertEqual(appSettings.fallbackURL, nil)
    }
    
    func testOpenHome() {
        
        let action = AvailableApplications.AppSettings.Action.Open
        XCTAssertEqual(action.path, "")
        XCTAssertEqual(action.fallbackPath, nil)
    }
}
