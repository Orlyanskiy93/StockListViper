//
//  FirstFirstRouter.swift
//  StockListViper
//
//  Created by Dmitriy on 14/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//
import ViperMcFlurry

class FirstRouter: FirstRouterInput {
    weak var transitionHandler: RamblerViperModuleTransitionHandlerProtocol?
    
    func openSecondVC() {
        let promise = transitionHandler?.openModule?(usingSegue: "secondSegue")
        promise?.thenChain({ (moduleInput) -> RamblerViperModuleOutput? in
            (moduleInput as? SecondModuleInput)?.setWord("fuck")
            return nil
        })
    }
}
