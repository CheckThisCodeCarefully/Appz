//
//  Fitbit.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Fitbit: ExternalApplication {
        
        public typealias ActionType = Applications.Fitbit.Action
        
        public let scheme = "fitbit:"
        public let fallbackURL = "https://www.fitbit.com/app"
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Fitbit {
    
    public enum Action {
        case Open
    }
}

extension Applications.Fitbit.Action: ExternalApplicationAction {
    
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
