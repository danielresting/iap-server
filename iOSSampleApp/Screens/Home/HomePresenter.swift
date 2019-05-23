//
//  HomePresenter.swift
//  IAPSampleApp
//
//  Created by Daniel Resting on 5/23/19.
//

import Foundation

class HomePresenter {
    var interactor: HomeInteractorInput!
    weak var ui: HomeUIInput!
}

extension HomePresenter: HomeInteractorOutput {
    
}

extension HomePresenter: HomeUIOutput {
    func didLoad() {
        
    }
}
