//
//  StockError.swift
//  StockListViper
//
//  Created by Дмитрий Орлянский on 12.03.2021.
//

import Foundation

enum StockError: LocalizedError {
    case data
    case maping
    case type
    case custom(String)
    
    var errorDescription: String? {
        switch self {
        case .data:
            return "request data error"
        case .maping:
            return "maping error"
        case .type:
            return "type not found"
        case .custom(let message):
            return message
        }
    }
}
