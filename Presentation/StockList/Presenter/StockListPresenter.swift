//
//  StockListStockListPresenter.swift
//  StockListViper
//
//  Created by Dmitriy on 12/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//

import Foundation

class StockListPresenter: StockListModuleInput, StockListViewOutput, StockListInteractorOutput {

    weak var view: StockListViewInput!
    var interactor: StockListInteractorInput!
    var router: StockListRouterInput!

    func viewIsReady() {
        view.setupInitialState()
        view.startLoading()
        interactor.load(.mostActive)
    }
    
    func didSelectSegment(_ index: Int) {
        guard let type = StockType(rawValue: index) else {
            view.show(StockError.type, nil)
            return
        }
        interactor.load(type)
    }
    
    func load(_ stocks: [Stock]) {
        if stocks.isEmpty {
            view.show(StockError.custom("Service offline")) { [weak self] (_) in
                self?.view.stocksLoadDidFailed()
            }
        } else {
            view.update(stocks)
        }
    }
    
    func handle(_ error: Error) {
        view.show(error) { [weak self] (_) in
            self?.view.stocksLoadDidFailed()
        }
    }
    
    func openAbout(_ stock: Stock) {
        router.openAboutModule(stock)
    }
}
