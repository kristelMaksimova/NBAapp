//
//  NewsTableViewCell.swift
//  NBAapp
//
//  Created by Kristi on 14.11.2021.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    //MARK: - Outlets
    @IBOutlet var imageNews: UIImageView!
    @IBOutlet var titleNews: UILabel!
    @IBOutlet var subtitleNews: UILabel!
    
    // MARK: - Public methods
    func configure(with news: News) {
        titleNews.text = news.title
        imageNews.image = UIImage(named: news.image)
        textLimitation(with: news)
        
        if news.isRead {
            imageNews.alpha = 0.8
            titleNews.textColor = .gray
            subtitleNews.textColor = .gray
        }
    }
    
    //MARK: - Private methods
    private func textLimitation(with news: News) {
        var shortTextNews = news.subtitle
        
        if shortTextNews.count >= 250 {
            while shortTextNews.count >= 250 {
                shortTextNews.remove(at: shortTextNews.index(before: shortTextNews.endIndex))
            }
            shortTextNews.append("...")
        }
        subtitleNews.text = shortTextNews
    }
}
