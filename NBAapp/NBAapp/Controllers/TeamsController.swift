//
//  TeamsController.swift
//  NBAapp
//
//  Created by Станислав Буйновский on 13.11.2021.
//

import UIKit

class TeamsController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let teams = Team.getTeams()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarController?.title = "Teams"
    }
    
    //MARK: - TableView data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "teamCell", for: indexPath) as! TeamsTableViewCell
        
        let model = teams[indexPath.row]
        
        cell.configure(with: model)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let teamDetailedVC = segue.destination as? TeamDetailedController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let model = teams[indexPath.row]
        teamDetailedVC.team = model
        tableView.deselectRow(at: indexPath, animated: false)
    }
}


