//
//  StockListStockListRouter.swift
//  StockListViper
//
//  Created by Dmitriy on 12/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//

import ViperMcFlurry

class StockListRouter: StockListRouterInput {
    weak var transitionHandler: RamblerViperModuleTransitionHandlerProtocol?
        
    func openAboutModule(_ stock: Stock) {
        let promise = transitionHandler?.openModule?(usingSegue: "aboutSegue")
        promise?.thenChain({ (moduleInput) -> RamblerViperModuleOutput? in
            (moduleInput as? AboutModuleInput)?.set(stock)
            return nil
        })
    }
}
