//
//  StockListStockListInteractor.swift
//  StockListViper
//
//  Created by Dmitriy on 12/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//
import Foundation
import PromiseKit

class StockListInteractor: StockListInteractorInput {
    var stockService: StockService!
    weak var output: StockListInteractorOutput!
    
    func load(_ type: StockType) {
        firstly {
            stockService.getList(type)
        } .done { [weak self] (stocks) in
            self?.output.load(stocks)
        } .catch { [weak self] (error) in
            self?.output.handle(error)
        }
    }
}
