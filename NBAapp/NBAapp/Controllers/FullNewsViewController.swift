//
//  FullNewsViewController.swift
//  NBAapp
//
//  Created by Kristi on 14.11.2021.
//

import UIKit

class NewsDetailedController: UIViewController {

    //MARK: - Outlets
    @IBOutlet var titleFullNews: UILabel!
    @IBOutlet var imageFullNews: UIImageView!
    @IBOutlet var subtitleFullNews: UILabel!
    @IBOutlet var dateFullNews: UILabel!
    @IBOutlet var sourceFullNews: UILabel!
    
    //MARK: - Public properties
    var news: News!
    
    //MARK: - Override
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabels()
        setImage()
    }
}

//MARK: - Extension
extension NewsDetailedController {
    
    //MARK: - Private methods
    private func setLabels() {
        titleFullNews.text = news.title
        subtitleFullNews.text = news.subtitle
        sourceFullNews.text = "Source: \(news.source)"
        dateFullNews.text = "Date: \(news.date)"
    }
    
    private func setImage() {
        imageFullNews.image = UIImage(named: news.image)
    }
}
