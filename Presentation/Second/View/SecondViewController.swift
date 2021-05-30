//
//  SecondSecondViewController.swift
//  StockListViper
//
//  Created by Dmitriy on 14/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, SecondViewInput {

    @IBOutlet weak var wordLabel: UILabel!
    var output: SecondViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: SecondViewInput
    func setupInitialState() {
        wordLabel.text = output.word
    }    
}
