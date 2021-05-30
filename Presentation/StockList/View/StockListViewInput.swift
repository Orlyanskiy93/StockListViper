//
//  StockListStockListViewInput.swift
//  StockListViper
//
//  Created by Dmitriy on 12/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//

protocol StockListViewInput: class, UIViewInput {
    func setupInitialState()
    func update(_ stocks: [Stock])
    func startLoading()
    func stocksDidLoaded()
    func stocksLoadDidFailed()
}
