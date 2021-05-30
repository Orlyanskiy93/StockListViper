//
//  AboutAboutInitializer.swift
//  StockListViper
//
//  Created by Dmitriy on 13/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//

import UIKit

class AboutModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var aboutViewController: AboutViewController!

    override func awakeFromNib() {

        let configurator = AboutModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: aboutViewController)
    }

}