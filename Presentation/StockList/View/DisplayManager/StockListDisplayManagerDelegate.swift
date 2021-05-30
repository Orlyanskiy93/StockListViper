//
//  StockListDisplayManagerDelegate.swift
//  StockListViper
//
//  Created by Дмитрий Орлянский on 12.03.2021.
//

import Foundation

protocol StockListDisplayManagerDelegate {
    func stockListDisplayManager(_ stockListDisplayManager: StockListDisplayManager, didSelectStock stock: Stock)
}
