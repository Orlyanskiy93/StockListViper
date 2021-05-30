//
//  AboutAboutInteractorOutput.swift
//  StockListViper
//
//  Created by Dmitriy on 13/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//

import Foundation

protocol AboutInteractorOutput: class {
    func logoUrlDidLoad(_ url: URL)
    func handleError(_ error: Error)
}
