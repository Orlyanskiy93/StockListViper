//
//  StockListStockListViewOutput.swift
//  StockListViper
//
//  Created by Dmitriy on 12/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//

protocol StockListViewOutput {
    func viewIsReady()
    func didSelectSegment(_ index: Int)
    func openAbout(_ stock: Stock)
}
