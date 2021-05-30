//
//  RouterTestRouterTestModuleInput.swift
//  StockListViper
//
//  Created by Dmitriy on 13/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//

import ViperMcFlurry

protocol RouterTestModuleInput: class, RamblerViperModuleInput {
    func setup(with number: Int)
}
