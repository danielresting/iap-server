//
//  HomeInterfaces.swift
//  IAPSampleApp
//
//  Created by Daniel Resting on 5/23/19.
//

import Foundation

protocol HomeUIInput: class {
    func display(viewModel: HomeViewModel)
}

protocol HomeUIOutput: class {
    func didLoad()
    
    func didTapSubscribe()
    func didTapServerRefresh()
    func didTapLocalRefresh()
}

protocol HomeInteractorInput: class {
    func fetchServerStatus()
    func fetchLocalStatus()
    
    func subscribe()
}
protocol HomeInteractorOutput: class {
    func deliver(serverStatus: SubscriptionStatus)
    func deliver(localStatus: SubscriptionStatus)
}

enum SubscriptionStatus {
    case active
    case inactive
    case error(Error)
}
