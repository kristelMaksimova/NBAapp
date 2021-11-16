//
//  DevelopersController.swift
//  NBAapp
//
//  Created by Станислав Буйновский on 14.11.2021.
//

import UIKit

class DevelopersController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Private properties
    private let developers = Developer.getDevelopers()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.title = "Developers"
    }
}

extension DevelopersController: UITableViewDataSource, UITableViewDelegate {
    
    //MARK: - Table view data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        developers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "developerCell", for: indexPath)
        let developer = developers[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.image = UIImage(named: developer.photo)
        content.imageProperties.cornerRadius = cell.frame.height / 2
        content.text = developer.fullName
        content.secondaryText = developer.roles.joined(separator: ", ")
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    //MARK: - TableView delegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let developerDetailedVC = segue.destination as? DeveloperDetailedController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let developer = developers[indexPath.row]
        developerDetailedVC.developer = developer
        
        tableView.deselectRow(at: indexPath, animated: false)
    }
}
