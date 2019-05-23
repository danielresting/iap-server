//
//  HomeInteractor.swift
//  IAPSampleApp
//
//  Created by Daniel Resting on 5/23/19.
//

import Foundation

class HomeInteractor {
    weak var output: HomeInteractorOutput?
    
}

extension HomeInteractor: HomeInteractorInput {
    func subscribe() {
        
    }
    
    func fetchServerStatus() {
        output?.deliver(serverStatus: .active)
    }
    
    func fetchLocalStatus() {
        
    }
}
