//
//  AboutAboutInteractor.swift
//  StockListViper
//
//  Created by Dmitriy on 13/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//
import Foundation
import PromiseKit

class AboutInteractor: AboutInteractorInput {
    weak var output: AboutInteractorOutput!
    var stockService: StockService!
    
    func getLogoUrlWith(_ sybol: String) {
        firstly {
            stockService.getLogoUrl(symbol: sybol)
        } .done { [weak self] (url) in
            self?.output.logoUrlDidLoad(url)
        } .catch { [weak self] (error) in
            self?.output.handleError(error)
        }
    }
}
