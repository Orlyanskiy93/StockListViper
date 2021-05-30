//
//  SecondSecondPresenter.swift
//  StockListViper
//
//  Created by Dmitriy on 14/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//
import Foundation

class SecondPresenter: NSObject, SecondModuleInput, SecondViewOutput, SecondInteractorOutput {
    weak var view: SecondViewInput!
    var interactor: SecondInteractorInput!
    var router: SecondRouterInput!
    var word: String!

    func viewIsReady() {
        view.setupInitialState()
    }
    
    func setWord(_ string: String) {
        word = string
    }
}
