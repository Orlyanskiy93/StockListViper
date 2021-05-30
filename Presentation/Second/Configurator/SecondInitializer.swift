//
//  SecondSecondInitializer.swift
//  StockListViper
//
//  Created by Dmitriy on 14/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//

import UIKit

class SecondModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var secondViewController: SecondViewController!

    override func awakeFromNib() {

        let configurator = SecondModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: secondViewController)
    }

}
