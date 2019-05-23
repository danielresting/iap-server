//
//  HomeViewModel.swift
//  IAPSampleApp
//
//  Created by Daniel Resting on 5/23/19.
//

import Foundation

struct HomeViewModel {
    let serverStatus: String
    let localStatus: String
    
    init(serverStatus: String, localStatus: String) {
        self.serverStatus = serverStatus
        self.localStatus = localStatus
    }
    
    init(serverStatus: SubscriptionStatus?, localStatus: SubscriptionStatus?) {
        self.serverStatus = serverStatus.toDisplayString()
        self.localStatus = localStatus.toDisplayString()
    }
}

extension Optional where Wrapped == SubscriptionStatus {
    func toDisplayString() -> String {
        switch self {
        case .none: return "Loading..."
        case .some(let status):
            switch status {
            case .active: return "Active!"
            case .inactive: return "Inactive"
            case .error(let error): return "Error: \(error.localizedDescription)"
            }
        }
    }
}
