//
//  WebService.swift
//  GoodNews
//
//  Created by BRM13259 on 05/07/22.
//

import Foundation

class WebServices {
    
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data,response,error in
            if let error = error {
                print(error)
                completion(nil)
            } else if let data = data {
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                if let articleList = articleList {
                    completion(articleList.articles)
                }
                print(articleList?.articles)
            }
        }.resume()
    }
}
