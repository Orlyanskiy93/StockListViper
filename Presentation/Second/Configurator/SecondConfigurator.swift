//
//  SecondSecondConfigurator.swift
//  StockListViper
//
//  Created by Dmitriy on 14/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//

import UIKit

class SecondModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? SecondViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: SecondViewController) {

        let router = SecondRouter()
        

        let presenter = SecondPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = SecondInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
        viewController.moduleInput = presenter
    }

}
