//
//  GroupeMe.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/7/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct GroupeMe: ExternalApplication {
        
        public typealias ActionType = Applications.GroupeMe.Action
        
        public let scheme = "groupme:"
        public let fallbackURL = "https://groupme.com"
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.GroupeMe {
    
    public enum Action {
        case Open
    }
}

extension Applications.GroupeMe.Action: ExternalApplicationAction {
    
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
