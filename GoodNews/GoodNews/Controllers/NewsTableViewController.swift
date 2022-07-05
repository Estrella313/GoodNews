//
//  NewsTableViewController.swift
//  GoodNews
//
//  Created by BRM13259 on 04/07/22.
//
import Foundation
import UIKit
class NewsTableViewController: UITableViewController {
    
    private var artitcleListVM: ArticleListViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    private func setUp() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        if let url: URL = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=a22679f181c344e89e1c13ccd9f986c6") {
            WebServices().getArticles(url: url) { articles in
                if let articles = articles {
                    self.artitcleListVM = ArticleListViewModel(article: articles)
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                }
            }
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.artitcleListVM?.numberOfSections ?? 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.artitcleListVM?.numberOfRowsInSections(section) ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleTableViewCell", for: indexPath) as? ArticleTableViewCell else {
            print("Ups something is wrong")
            return UITableViewCell()
        }
        let articleVM = self.artitcleListVM?.articleAtIndex(indexPath.row)
        cell.titlelbl.text = articleVM?.title
        cell.descriptionlbl.text = articleVM?.description
        
        return cell
    }
}
