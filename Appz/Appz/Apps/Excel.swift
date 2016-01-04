//
//  Excel.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/4/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Excel: ExternalApplication {
        
        public typealias ActionType = Applications.Excel.Action
        
        public let scheme = "ms-excel:"
        public let fallbackURL = "https://www.office.com/"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Excel {
    
    public enum Action {
        case Open(payload: MSPayload)
    }
}

extension Applications.Excel.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
        case .Open(let payload):
            
            return ActionPaths(
                app: Path(
                    pathComponents: ["ofe\(payload.buildURL())"],
                    queryParameters: [:]
                ),
                web: Path()
            )
        }
    }
}
