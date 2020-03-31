//
//  PurchaseController.swift
//  IAPDemoProject
//
//  Created by Ivan Akulov on 26/10/2017.
//  Copyright © 2017 Ivan Akulov. All rights reserved.
//

import UIKit
import StoreKit

class PurchaseController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let iapManager = IAPManager.shared
    let notificationCenter = NotificationCenter.default
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
        setupNavigationBar()
        
        notificationCenter.addObserver(self,
                                       selector: #selector(reload),
                                       name: NSNotification.Name(IAPManager.productNotoficationIdentifier),
                                       object: nil)
        
        notificationCenter.addObserver(self,
                                       selector: #selector(completeConsumable),
                                       name: NSNotification.Name(IAPProducts.consumable.rawValue),
                                       object: nil)
        notificationCenter.addObserver(self,
                                       selector: #selector(completeNonConsumable),
                                       name: NSNotification.Name(IAPProducts.nonConsumable.rawValue),
                                       object: nil)
        notificationCenter.addObserver(self,
                                       selector: #selector(completeAutoRenewable),
                                       name: NSNotification.Name(IAPProducts.autoRenewable.rawValue),
                                       object: nil)
        notificationCenter.addObserver(self,
                                       selector: #selector(completeNonRenewable),
                                       name: NSNotification.Name(IAPProducts.nonRenewable.rawValue),
                                       object: nil)
    }
    
    @objc private func restorePurchases() {
        iapManager.restoreCompletedTransaction()
    }

    private func setupNavigationBar() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Restore", style: .plain, target: self, action: #selector(restorePurchases))
    }
    
    private func priceString(forProduct product: SKProduct) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        numberFormatter.locale = product.priceLocale
        return numberFormatter.string(from: product.price)!
    }
    
    @objc private func reload() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    @objc private func completeConsumable() {
        print("Got consumable")
    }
    
    @objc private func completeNonConsumable() {
        print("Got non-consumable")
    }
    
    @objc private func completeAutoRenewable() {
        print("Got auto-renewable")
    }
    
    @objc private func completeNonRenewable() {
        print("Got non-renewable")
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
        print("PurchaseController deinit")
    }
}

extension PurchaseController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return iapManager.products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifiers.purchaseCell, for: indexPath)
        
        let product = iapManager.products[indexPath.row]
        cell.textLabel?.text = product.localizedTitle + " - " + self.priceString(forProduct: product)
        return cell
    }
}


extension PurchaseController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let identifier = iapManager.products[indexPath.row].productIdentifier
        iapManager.purchase(productWith: identifier)
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}








