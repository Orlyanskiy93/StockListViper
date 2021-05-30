//
//  FirstFirstPresenter.swift
//  StockListViper
//
//  Created by Dmitriy on 14/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//
import Foundation

class FirstPresenter: FirstModuleInput, FirstViewOutput, FirstInteractorOutput {

    weak var view: FirstViewInput!
    var interactor: FirstInteractorInput!
    var router: FirstRouterInput!
    var word = "Hello"

    func viewIsReady() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.router.openSecondVC()
        }
        view.setupInitialState()
        view.setLabelText(word)
    }
}
