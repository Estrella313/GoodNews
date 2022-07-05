//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by BRM13259 on 05/07/22.
//

import Foundation

struct ArticleListViewModel {
    let article: [Article]
}
extension ArticleListViewModel {
    var numberOfSections: Int {
        return 1
    }
    
    func numberOfRowsInSections(_ section: Int) -> Int {
        return self.article.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.article[index]
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel {
    private let article: Article
}
extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}
extension ArticleViewModel {
    var title: String {
        return self.article.title
    }
    var description: String {
        return self.article.description
    }
}
