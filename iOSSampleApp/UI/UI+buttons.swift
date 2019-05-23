//
//  UI+buttons.swift
//  IAPSampleApp
//
//  Created by Daniel Resting on 5/23/19.
//

import Foundation
import UIKit

extension UI {
    static func refreshButton() -> UIButton {
        let button = UIButton(type: .roundedRect)
        button.setTitle("Refresh", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
    
    static func subscribeButton() -> UIButton {
        let button = UIButton(type: .roundedRect)
        button.setTitle("   Subscribe   ", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 10
        return button
    }
}
