//
//  UIViewInput.swift
//  StockListViper
//
//  Created by Дмитрий Орлянский on 13.03.2021.
//

import Foundation
import UIKit

protocol UIViewInput {
    func show(_ error: Error, _ handler: ((UIAlertAction) -> Void)?)
}

extension UIViewInput {
    func show(_ error: Error, _ handler: ((UIAlertAction) -> Void)?) {
        guard let vc = self as? UIViewController else { return }
        let allert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .cancel, handler: handler)
        allert.addAction(action)
        vc.present(allert, animated: true, completion: nil)
    }
}
