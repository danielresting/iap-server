//
//  routes.swift
//  IAPServer
//
//  Created by Daniel Resting on 5/20/19.
//

import Foundation
import Vapor

public func routes(_ router: Router) throws {
    router.get("healthy") { req in return "yes" }
    
}
