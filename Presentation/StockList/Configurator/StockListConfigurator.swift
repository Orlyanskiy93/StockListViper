//
//  StockListStockListConfigurator.swift
//  StockListViper
//
//  Created by Dmitriy on 12/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//

import UIKit

class StockListModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? StockListViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: StockListViewController) {

        let router = StockListRouter()
        router.transitionHandler = viewController

        let presenter = StockListPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = StockListInteractor()
        interactor.output = presenter
        interactor.stockService = StockServiceImp.shared

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
