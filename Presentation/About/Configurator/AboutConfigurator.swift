//
//  AboutAboutConfigurator.swift
//  StockListViper
//
//  Created by Dmitriy on 13/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//

import UIKit

class AboutModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? AboutViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: AboutViewController) {

        let router = AboutRouter()

        let presenter = AboutPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = AboutInteractor()
        interactor.output = presenter
        interactor.stockService = StockServiceImp.shared

        presenter.interactor = interactor
        viewController.output = presenter
        viewController.moduleInput = presenter
    }

}
