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
    static let productNotoficationIdentifier = "IAPProductIdentifier"
    
    var products = [SKProduct]()
    
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
        let identifiers: Set = [
            IAPProducts.consumable.rawValue,
            IAPProducts.nonConsumable.rawValue,
            IAPProducts.autoRenewable.rawValue,
            IAPProducts.nonRenewable.rawValue
        ]
        
        let productRequest = SKProductsRequest(productIdentifiers: identifiers)
        productRequest.delegate = self
        productRequest.start()
    }
}

extension IAPManager: SKPaymentTransactionObserver {
    
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        
    }
}

extension IAPManager: SKProductsRequestDelegate {
    
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        self.products = response.products
        products.forEach { print($0.localizedTitle) }
        if products.count > 0 {
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: IAPManager.productNotoficationIdentifier), object: nil)
        }
    }
}
