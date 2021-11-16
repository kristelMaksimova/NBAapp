//
//  FullNewsViewController.swift
//  NBAapp
//
//  Created by Kristi on 14.11.2021.
//

import UIKit

class FullNewsViewController: UIViewController {

    @IBOutlet var titleFullNews: UILabel!
    @IBOutlet var imageFullNews: UIImageView!
    @IBOutlet var subtitleFullNews: UILabel!
    @IBOutlet var dateFullNews: UILabel!
    @IBOutlet var sourceFullNews: UILabel!
    
    var news: News!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleFullNews.text = news.title
        imageFullNews.image = UIImage(named: news.image)
        subtitleFullNews.text = news.subtitle
        sourceFullNews.text = "Source: \(news.source)"
        dateFullNews.text = "Date:: \(news.date)"
    }

}
