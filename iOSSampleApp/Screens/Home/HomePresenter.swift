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
    
    var serverStatus: SubscriptionStatus?
    var localStatus: SubscriptionStatus?
    
    private func updateUI() {
        let viewModel = HomeViewModel(serverStatus: self.serverStatus, localStatus: self.localStatus)
        ui.display(viewModel: viewModel)
    }
}

extension HomePresenter: HomeInteractorOutput {
    func deliver(serverStatus: SubscriptionStatus) {
        self.serverStatus = serverStatus
        self.updateUI()
    }
    
    func deliver(localStatus: SubscriptionStatus) {
        self.localStatus = localStatus
        self.updateUI()
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
