//
//  TeamsController.swift
//  NBAapp
//
//  Created by Станислав Буйновский on 13.11.2021.
//

import UIKit

// MARK: - Protocol
protocol TeamDetailedDelegate {
    func updateModel(with: Team, byIndex: Int)
}

class TeamsController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Public properties
    var teams = Team.getTeams()
    
    //MARK: - Override
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.title = "Teams"
    }
}

//MARK: - Extension
extension TeamsController: UITableViewDataSource, UITableViewDelegate {
    
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
    
    //MARK: - TableView delegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let teamDetailedVC = segue.destination as? TeamDetailedController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let model = teams[indexPath.row]
        teamDetailedVC.team = model
        teamDetailedVC.rowIndex = indexPath.row
        teamDetailedVC.delegate = self
        
        tableView.deselectRow(at: indexPath, animated: false)
    }
}

//MARK: - Extension Delegate
extension TeamsController: TeamDetailedDelegate {
    func updateModel(with team: Team, byIndex index: Int) {
        teams[index].isFavourite = team.isFavourite
        tableView.reloadData()
    }
}
