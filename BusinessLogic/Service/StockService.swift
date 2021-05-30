//
//  MyService.swift
//  StockListViper
//
//  Created by Дмитрий Орлянский on 11.03.2021.
//

import Foundation
import PromiseKit

protocol StockService {
    func getList(_ type: StockType) -> Promise<[Stock]>
    func getLogoUrl(symbol: String) -> Promise<URL>
}
