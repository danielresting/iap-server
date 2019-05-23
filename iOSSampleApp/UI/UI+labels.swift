//
//  UI+labels.swift
//  IAPSampleApp
//
//  Created by Daniel Resting on 5/23/19.
//

import Foundation
import UIKit

extension UI {
    static func label(title: String) -> UILabel {
        let label = UILabel()
        label.text = title
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}
