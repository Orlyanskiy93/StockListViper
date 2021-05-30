//
//  FirstFirstViewController.swift
//  StockListViper
//
//  Created by Dmitriy on 14/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, FirstViewInput {
    @IBOutlet weak var wordLabel: UILabel!
    
    var output: FirstViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: FirstViewInput
    func setupInitialState() {
    }
    
    func setLabelText(_ string: String) {
        wordLabel.text = string
    }
}
