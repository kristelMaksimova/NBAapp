//
//  TeamsTableViewCell.swift
//  NBAapp
//
//  Created by Станислав Буйновский on 13.11.2021.
//

import UIKit

class TeamsTableViewCell: UITableViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var teamLogoImageView: UIImageView!
    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var favoriteImageView: UIImageView!
    
    func configure(with team: Team) {
        teamLogoImageView.image = UIImage(named: team.logoImage)
        teamNameLabel.text = team.teamNameFull
        if team.isFavourite {
            favoriteImageView.isHidden = false
        } else {
            favoriteImageView.isHidden = true
        }
    }
}
