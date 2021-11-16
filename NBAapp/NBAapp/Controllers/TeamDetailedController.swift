//
//  TeamDetailedController.swift
//  NBAapp
//
//  Created by Станислав Буйновский on 13.11.2021.
//

import UIKit

class TeamDetailedController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var teamLogoImageView: UIImageView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var profileView: UIView!
    @IBOutlet weak var lineupTableView: UITableView!
    @IBOutlet weak var foundedLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var arenaLabel: UILabel!
    @IBOutlet weak var headCoachLabel: UILabel!
    
    //MARK: - Public properties
    var team: Team!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = team.teamNameFull
        
        setImages()
        setLabels()
    }
}

extension TeamDetailedController: UITableViewDataSource, UITableViewDelegate {
    
    //MARK: - Actions
    @IBAction func segmentControlChanged() {
        switch segmentControl.selectedSegmentIndex{
        case 0:
            profileView.isHidden = false
            lineupTableView.isHidden = true
        case 1:
            profileView.isHidden = true
            lineupTableView.isHidden = false
        default:
            profileView.isHidden = true
            lineupTableView.isHidden = true
        }
    }
    
    //MARK: - TableView data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        team.lineup.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "lineupCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = team.lineup[indexPath.row]
        cell.contentConfiguration = content
        
        return cell
    }
    
    //MARK: - Private methods
    private func setImages() {
        teamLogoImageView.image = UIImage(named: team.logoImage)
    }
    
    private func setLabels() {
        foundedLabel.text = team.founded
        cityLabel.text = team.city
        arenaLabel.text = team.arena
        headCoachLabel.text = team.headCoach
    }
}
