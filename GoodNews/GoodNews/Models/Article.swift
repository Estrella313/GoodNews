//
//  Article.swift
//  GoodNews
//
//  Created by BRM13259 on 05/07/22.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
}
