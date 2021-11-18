//
//  GamesTableViewCell.swift
//  NBAapp
//
//  Created by Руслан Сафин on 13.11.2021.
//

import UIKit

class GamesTableViewCell: UITableViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var attackFavorite: UIImageView!
    @IBOutlet weak var deffFavorite: UIImageView!
    @IBOutlet weak var teamOneLabel: UILabel!
    @IBOutlet weak var teamTwoLabel: UILabel!
    @IBOutlet weak var teamOneImage: UIImageView!
    @IBOutlet weak var teamTwoImage: UIImageView!
    @IBOutlet weak var totalScore: UILabel!
    
    func configure(with game: Game) {
        teamOneLabel.text = game.attackers.teamName
        teamTwoLabel.text = game.defenders.teamName
        teamOneImage.image = UIImage(named: game.attackers.logoImage)
        teamTwoImage.image = UIImage(named: game.defenders.logoImage)
        totalScore.text = game.score
        
        if game.attackers.isFavourite {
            attackFavorite.isHidden = false
        } else {
            attackFavorite.isHidden = true
        }
        
        if game.defenders.isFavourite {
            deffFavorite.isHidden = false
        } else {
            deffFavorite.isHidden = true
        }
    }
}
