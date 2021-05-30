//
//  RouterTestRouterTestConfigurator.swift
//  StockListViper
//
//  Created by Dmitriy on 13/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//

import UIKit

class RouterTestModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? RouterTestViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: RouterTestViewController) {

        let router = RouterTestRouter()

        let presenter = RouterTestPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = RouterTestInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
        viewController.moduleInput = presenter
    }

}
