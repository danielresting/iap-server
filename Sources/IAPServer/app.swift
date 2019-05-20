//
//  app.swift
//  IAPServer
//
//  Created by Daniel Resting on 5/20/19.
//

import Foundation
import Vapor

public func app(_ env: Environment) throws -> Application {
    var config = Config.default()
    var env = env
    var services = Services.default()
    try configure(&config, &env, &services)
    let app = try Application(config: config, environment: env, services: services)
    try boot(app)
    return app
}
