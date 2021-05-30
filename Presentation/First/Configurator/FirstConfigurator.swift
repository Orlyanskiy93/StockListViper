//
//  FirstFirstConfigurator.swift
//  StockListViper
//
//  Created by Dmitriy on 14/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//

import UIKit

class FirstModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? FirstViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: FirstViewController) {

        let router = FirstRouter()
        router.transitionHandler = viewController

        let presenter = FirstPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = FirstInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
