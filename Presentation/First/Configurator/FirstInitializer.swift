//
//  FirstFirstInitializer.swift
//  StockListViper
//
//  Created by Dmitriy on 14/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//

import UIKit

class FirstModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var firstViewController: FirstViewController!

    override func awakeFromNib() {

        let configurator = FirstModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: firstViewController)
    }

}
