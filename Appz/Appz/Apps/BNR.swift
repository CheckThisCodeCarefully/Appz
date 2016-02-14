//
//  BNR.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct BNR: ExternalApplication {
        
        public typealias ActionType = Applications.BNR.Action
        
        public let scheme = "bnr:"
        public let fallbackURL = "http://www.bnr.nl"
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.BNR {
    
    public enum Action {
        case Open
    }
}

extension Applications.BNR.Action: ExternalApplicationAction {
    
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
