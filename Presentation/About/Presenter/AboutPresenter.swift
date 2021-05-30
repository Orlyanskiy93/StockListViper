//
//  AboutAboutPresenter.swift
//  StockListViper
//
//  Created by Dmitriy on 13/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//
import Foundation
import PromiseKit

class AboutPresenter: NSObject, AboutModuleInput, AboutViewOutput, AboutInteractorOutput {
    weak var view: AboutViewInput!
    var interactor: AboutInteractorInput!
    var router: AboutRouterInput!
    var stock: Stock!

    func viewIsReady() {
        view.setupInitialState()
        view.fillWith(stock)
        interactor.getLogoUrlWith(stock.symbol)
    }
        
    func logoUrlDidLoad(_ url: URL) {
        view.loadLogoWith(url)
    }
    
    func handleError(_ error: Error) {
        view.show(error) { [weak self] (_) in
            self?.view.logoLoagDidFailed()
        }
    }
    
    func set(_ stock: Stock) {
        self.stock = stock
    }
}
