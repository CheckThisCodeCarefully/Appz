//
//  Trello.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/5/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Trello: ExternalApplication {
        
        public typealias ActionType = Applications.Trello.Action
        
        public let scheme = "trello:"
        public let fallbackURL = "https://trello.com/"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Trello {
    
    public enum Action {
        case Open
    }
}

extension Applications.Trello.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
        case .Open:
            return ActionPaths(
                app: Path(
                    pathComponents: ["app"],
                    queryParameters: [:]
                ),
                web: Path()
            )
        }
    }
}
