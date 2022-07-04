//
//  NewsTableViewController.swift
//  GoodNews
//
//  Created by BRM13259 on 04/07/22.
//
import Foundation
import UIKit
class NewsTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    private func setUp() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
