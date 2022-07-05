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
        if let url: URL = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=a22679f181c344e89e1c13ccd9f986c6") {
            WebServices().getArticles(url: url) { _ in
            }
        }
    }
}
