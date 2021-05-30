//
//  RouterTestRouterTestViewController.swift
//  StockListViper
//
//  Created by Dmitriy on 13/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//

import UIKit

class RouterTestViewController: UIViewController, RouterTestViewInput {

    @IBOutlet weak var numberLabel: UILabel!
    var output: RouterTestViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: RouterTestViewInput
    func setupInitialState() {
        numberLabel.text = output.number.description
    }
}
