//
//  AboutAboutViewInput.swift
//  StockListViper
//
//  Created by Dmitriy on 13/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//
import Foundation

protocol AboutViewInput: class, UIViewInput {
    func setupInitialState()
    func fillWith(_ stock: Stock)
    func loadLogoWith(_ logoUrl: URL)
    func logoLoagDidFailed()
}
