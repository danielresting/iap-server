//
//  HomeInterfaces.swift
//  IAPSampleApp
//
//  Created by Daniel Resting on 5/23/19.
//

import Foundation

protocol HomeUIInput: class {}
protocol HomeUIOutput: class {
    func didLoad()
}

protocol HomeInteractorInput: class {}
protocol HomeInteractorOutput: class {}
