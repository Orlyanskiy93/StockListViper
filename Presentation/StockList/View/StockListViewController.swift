//
//  StockListStockListViewController.swift
//  StockListViper
//
//  Created by Dmitriy on 12/03/2021.
//  Copyright © 2021 MyCompany. All rights reserved.
//

import UIKit

class StockListViewController: UIViewController, StockListViewInput {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var activitiIndicator: UIActivityIndicatorView!
    @IBOutlet var tryAgainButton: UIButton!
    @IBOutlet var segmentedControl: UISegmentedControl!

    var output: StockListViewOutput!
    lazy var stockDisplayManager: StockListDisplayManager = {
        let displayManager = StockListDisplayManager(tableView)
        return displayManager
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }

    func setupInitialState() {
        setupSegmentControl()
        stockDisplayManager.delegate = self
        activitiIndicator.hidesWhenStopped = true
        startLoading()
    }
    
    func setupSegmentControl() {
        segmentedControl.removeAllSegments()
        let allCases = StockType.allCases
        allCases.forEach { (type) in
            segmentedControl.insertSegment(withTitle: type.name, at: type.rawValue, animated: false)
        }
        segmentedControl.selectedSegmentIndex = 0
    }
    
    @IBAction func didChangeSegment(_ sender: UISegmentedControl) {
        output.didSelectSegment(sender.selectedSegmentIndex)
    }
    
    @IBAction func tryAgain(_ sender: UIButton) {
        startLoading()
        output.didSelectSegment(segmentedControl.selectedSegmentIndex)
    }
    
    func update(_ stocks: [Stock]) {
        stockDisplayManager.stockArray = stocks
        stocksDidLoaded()
    }
    
    func startLoading() {
        tryAgainButton.isHidden = true
        activitiIndicator.startAnimating()
        tableView.isHidden = true
    }
    
    func stocksDidLoaded() {
        activitiIndicator.stopAnimating()
        tableView.isHidden = false
    }
    
    func stocksLoadDidFailed() {
        activitiIndicator.stopAnimating()
        tryAgainButton.isHidden = false
    }
}

extension StockListViewController: StockListDisplayManagerDelegate {
    func stockListDisplayManager(_ stockListDisplayManager: StockListDisplayManager, didSelectStock stock: Stock) {
        output.openAbout(stock)
    }
}
