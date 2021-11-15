//
//  NewsListViewController.swift
//  NBAapp
//
//  Created by Kristi on 14.11.2021.
//

import UIKit

class NewsListViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet var table: UITableView!
    
    var newsList = News.getNews()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.title = "News"
    }

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
}

// MARK: - Navigation
extension NewsListViewController: UITableViewDelegate {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let fullNewsVC = segue.destination as? FullNewsViewController else {return}
        guard let indexPath = table.indexPathForSelectedRow else {return}
        let news = newsList[indexPath.row]
        fullNewsVC.news = news
    }
}

