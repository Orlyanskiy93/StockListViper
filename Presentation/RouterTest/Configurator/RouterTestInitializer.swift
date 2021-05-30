//
//  RouterTestRouterTestInitializer.swift
//  StockListViper
//
//  Created by Dmitriy on 13/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//

import UIKit

class RouterTestModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var routertestViewController: RouterTestViewController!

    override func awakeFromNib() {

        let configurator = RouterTestModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: routertestViewController)
    }

}
