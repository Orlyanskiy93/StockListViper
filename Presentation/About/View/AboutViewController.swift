//
//  AboutAboutViewController.swift
//  StockListViper
//
//  Created by Dmitriy on 13/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//

import UIKit
import Kingfisher

class AboutViewController: UIViewController, AboutViewInput {    
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var symbolLabel: UILabel!
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var priceChangeLabel: UILabel!
    @IBOutlet weak var openLabel: UILabel!
    @IBOutlet weak var lowLabel: UILabel!
    @IBOutlet weak var highLablel: UILabel!

    var output: AboutViewOutput!

    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }

    func setupInitialState() {
        activityIndicator.hidesWhenStopped = true
        activityIndicator.startAnimating()
    }
        
    func fillWith(_ stock: Stock) {
        symbolLabel.text = stock.symbol
        companyNameLabel.text = stock.name
        priceLabel.text = stock.price.description + " $"
        if let priceChange = stock.priceChange {
            priceChangeLabel.textColor = priceChange < 0 ? .red : .green
            priceChangeLabel.text = priceChange > 0 ? "+" + priceChange.description + " %" : priceChange.description + " %"
        } else {
            priceChangeLabel.text = "none"
        }
        if let open = stock.open {
            openLabel.text = open.description + " $"
        } else {
            openLabel.text = "none"
        }
        if let low = stock.low {
            lowLabel.text = low.description + " $"
        } else {
            lowLabel.text = "none"
        }
        if let high = stock.high {
            highLablel.text = high.description + "$"
        } else {
            highLablel.text = "none"
        }
    }
    
    func loadLogoWith(_ logoUrl: URL) {
        activityIndicator.stopAnimating()
        logoImageView.kf.setImage(with: logoUrl)
    }
    
    func logoLoagDidFailed() {
        activityIndicator.stopAnimating()
        let image = UIImage(named: "error-image-generic")
        logoImageView.image = image
    }
}
