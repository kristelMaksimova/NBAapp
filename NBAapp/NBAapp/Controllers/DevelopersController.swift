//
//  DevelopersController.swift
//  NBAapp
//
//  Created by Станислав Буйновский on 14.11.2021.
//

import UIKit

class DevelopersController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let developers = Developer.getDevelopers()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tabBarController?.title = "Developers"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        developers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "developerCell", for: indexPath)
       
        let developer = developers[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.image = UIImage(named: "bulls-logo")
        content.text = developer.fullName
        content.secondaryText = developer.role
        cell.contentConfiguration = content
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}
