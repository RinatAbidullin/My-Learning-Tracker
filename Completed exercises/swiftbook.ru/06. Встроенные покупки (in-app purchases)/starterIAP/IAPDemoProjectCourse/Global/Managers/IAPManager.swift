//
//  IAPManager.swift
//  IAPDemoProjectCourse
//
//  Created by Rinat Abidullin on 30.03.2020.
//  Copyright © 2020 Ivan Akulov. All rights reserved.
//

import Foundation
import StoreKit

class IAPManager: NSObject {
    
    static let shared = IAPManager()
    
    private override init() {}
    
    public func setupPurchases(callback: @escaping (Bool) -> ()) {
        if SKPaymentQueue.canMakePayments() {
            SKPaymentQueue.default().add(self)
            callback(true)
            return
        }
        callback(false)
    }
    
    public func getProducts() {
        
    }
}

extension IAPManager: SKPaymentTransactionObserver {
    
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        
    }
}
