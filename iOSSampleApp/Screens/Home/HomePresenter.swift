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
    func deliver(serverStatus: SubscriptionStatus) {
        
    }
    
    func deliver(localStatus: SubscriptionStatus) {
        
    }
}

extension HomePresenter: HomeUIOutput {
    func didTapServerRefresh() {
        interactor.fetchServerStatus()
    }
    
    func didTapLocalRefresh() {
        interactor.fetchLocalStatus()
    }
    
    func didLoad() {
        interactor.fetchServerStatus()
        interactor.fetchLocalStatus()
    }
    
    func didTapSubscribe() {
        interactor.subscribe()
    }
}
