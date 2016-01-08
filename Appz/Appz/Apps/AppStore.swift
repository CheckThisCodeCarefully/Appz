//
//  AppStore.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 11/9/15.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct AppStore: ExternalApplication {
        
        public typealias ActionType = Applications.AppStore.Action

        public let scheme = "itms-apps:"
        public let fallbackURL = "http:"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.AppStore {

    public enum Action {
    
        case Account(id: String)
        case App(id: String)
    }
}


extension Applications.AppStore.Action: ExternalApplicationAction {

    public var paths: ActionPaths {
        
        switch self {
        case .Account(let id):
            return ActionPaths(
                app: Path(
                    pathComponents: ["itunes.apple.com", "developer", "id", id],
                    queryParameters: [:]
                ),
                web: Path()
            )
            
        case .App(let id):
            return ActionPaths(
                app: Path(
                    pathComponents: ["itunes.apple.com", "app","id\(id)"],
                    queryParameters: [:]
                ),
                web: Path()
            )
        }
    }
}

