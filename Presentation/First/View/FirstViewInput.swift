//
//  FirstFirstViewInput.swift
//  StockListViper
//
//  Created by Dmitriy on 14/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//

protocol FirstViewInput: class {
    func setupInitialState()
    func setLabelText(_ string: String)
}
