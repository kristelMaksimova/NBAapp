//
//  NewsListViewController.swift
//  NBAapp
//
//  Created by Kristi on 14.11.2021.
//

import UIKit

class NewsListViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet var table: UITableView!
    
    //MARK: - Public properties
    var newsList = News.getNews()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.title = "News"
    }
}
    
// MARK: - Extention
extension NewsListViewController: UITableViewDataSource, UITableViewDelegate {
        
    // MARK: - Table view data source
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
              newsList.count
          }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell", for: indexPath) as! NewsTableViewCell
        let news = newsList[indexPath.row]
       
        cell.configure(with: news)

           return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let fullNewsVC = segue.destination as? NewsDetailedController else {return}
        guard let indexPath = table.indexPathForSelectedRow else {return}
        let news = newsList[indexPath.row]
        fullNewsVC.news = news
    }
}

