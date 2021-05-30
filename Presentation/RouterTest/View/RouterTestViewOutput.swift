//
//  RouterTestRouterTestViewOutput.swift
//  StockListViper
//
//  Created by Dmitriy on 13/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//

protocol RouterTestViewOutput {

    /**
        @author Dmitriy
        Notify presenter that view is ready
    */
    var number: Int! { get }
    func viewIsReady()
}
