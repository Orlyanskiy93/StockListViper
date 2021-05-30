//
//  StockListStockListInitializer.swift
//  StockListViper
//
//  Created by Dmitriy on 12/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//

import UIKit

class StockListModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var stocklistViewController: StockListViewController!

    override func awakeFromNib() {

        let configurator = StockListModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: stocklistViewController)
    }

}
