//
//  RouterTestRouterTestPresenter.swift
//  StockListViper
//
//  Created by Dmitriy on 13/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//
import Foundation

class RouterTestPresenter: NSObject, RouterTestModuleInput, RouterTestViewOutput, RouterTestInteractorOutput {

    weak var view: RouterTestViewInput!
    var interactor: RouterTestInteractorInput!
    var router: RouterTestRouterInput!
    
    var number: Int!

    func viewIsReady() {
        view.setupInitialState()
    }
    
    func setup(with number: Int) {
        self.number = number
    }
}
