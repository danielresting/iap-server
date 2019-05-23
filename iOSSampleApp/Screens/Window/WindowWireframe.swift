//
//  WindowWireframe.swift
//  IAPSampleApp
//
//  Created by Daniel Resting on 5/23/19.
//

import Foundation
import UIKit

class WindowWireframe {
    func createWindow() -> UIWindow {
        let window = UIWindow()
        let home = HomeWireframe().createViewController()
        let nav = UINavigationController(rootViewController: home)
        window.rootViewController = nav
        window.makeKeyAndVisible()
        return window
    }
}
