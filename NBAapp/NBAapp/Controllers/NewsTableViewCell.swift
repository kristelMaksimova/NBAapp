//
//  NewsTableViewCell.swift
//  NBAapp
//
//  Created by Kristi on 14.11.2021.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    @IBOutlet var imageNews: UIImageView!
    @IBOutlet var titleNews: UILabel!
    @IBOutlet var subtitleNews: UILabel!
    
    
    
    func configure(with news: News) {
        titleNews.text = news.title
        subtitleNews.text = news.subtitle
        imageNews.image = UIImage(named: news.image)
    }
}
