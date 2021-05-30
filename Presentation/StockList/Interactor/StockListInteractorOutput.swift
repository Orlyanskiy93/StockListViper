//
//  StockListStockListInteractorOutput.swift
//  StockListViper
//
//  Created by Dmitriy on 12/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//

import Foundation

protocol StockListInteractorOutput: class {
    func load(_ stocks: [Stock])
    func handle(_ error: Error)
}
