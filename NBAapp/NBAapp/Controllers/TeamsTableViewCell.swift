//
//  TeamsTableViewCell.swift
//  NBAapp
//
//  Created by Станислав Буйновский on 13.11.2021.
//

import UIKit

class TeamsTableViewCell: UITableViewCell {
    
    //MARK: - IBOutlets
    @IBOutlet weak var teamLogoImageView: UIImageView!
    @IBOutlet weak var teamNameLabel: UILabel!
    
    func configure(with team: Team) {
        teamLogoImageView.image = UIImage(named: team.logoImage)
        teamNameLabel.text = team.teamNameFull
    }
}
