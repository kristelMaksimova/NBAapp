//
//  News.swift
//  NBAapp
//
//  Created by Kristi on 14.11.2021.
//

import Foundation

struct News {
    let id: Int
    let title: String
    let subtitle: String
    let source: String
    let date: String
    let image: String
    var isRead = false
}

extension News {
    static func getNews() -> [News] {
        var resultNews: [News] = []
        let newsList = DataManager.shared.news.shuffled()
        
        for news in newsList {
            let id = Int(news["Id"] ?? "" ) ?? 0
            let title = news["Title"] ?? ""
            let subtitle = news["Subtitle"] ?? ""
            let source = news["Source"] ?? ""
            let date = news["Date"] ?? ""
            let image = news["Image"] ?? ""
            let news = News(id: id,
                            title: title,
                            subtitle: subtitle,
                            source: source,
                            date: date,
                            image: image)
            resultNews.append(news)
        }
        
        return resultNews
    }
}
