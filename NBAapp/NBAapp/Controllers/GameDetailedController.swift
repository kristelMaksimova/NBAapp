//
//  GameDetailedController.swift
//  NBAapp
//
//  Created by Руслан Сафин on 13.11.2021.
//

import UIKit

class GameDetailedController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var favoriteAttackTeam: UIButton!
    @IBOutlet weak var favoriteDeffTeam: UIButton!
    @IBOutlet weak var arenaImageView: UIImageView!
    @IBOutlet weak var attackTeamLogo: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var deffTeamLogo: UIImageView!
    @IBOutlet weak var attackTeamLabel: UILabel!
    @IBOutlet weak var deffTeamLabel: UILabel!
    @IBOutlet weak var gameScore: UILabel!
    @IBOutlet weak var arenaLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var topPlayerPhoto: UIImageView!
    @IBOutlet weak var topPlayerLabel: UILabel!
    
    //MARK: - Public properties
    var game: Game!
    var delegate: GamesController!
    
    //MARK: - Override
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "\(game.attackers.teamName) vs. \(game.defenders.teamName)"
        
        setImages()
        setLabels()
        setButtons()
    }
    
    //MARK: - Actions
    @IBAction func attackersButtonPressed(_ sender: Any) {
        if game.attackers.isFavourite {
            game.attackers.isFavourite = false
        } else {
            game.attackers.isFavourite = true
        }
        
        setButtons()
        delegate.updateAttack(with: game)
    }
    
    @IBAction func defendersButtonPressed(_ sender: Any) {
        if game.defenders.isFavourite {
            game.defenders.isFavourite = false
        } else {
            game.defenders.isFavourite = true
        }
        
        setButtons()
        delegate.updateDeff(with: game)
    }
}

//MARK: - Extension
extension GameDetailedController {
    
    //MARK: - Private methods
    private func setButtons() {
        if game.attackers.isFavourite {
            favoriteAttackTeam.setImage(UIImage(systemName: "star.fill"), for: .normal)
        } else {
            favoriteAttackTeam.setImage(UIImage(systemName: "star"), for: .normal)
        }
        
        if game.defenders.isFavourite {
            favoriteDeffTeam.setImage(UIImage(systemName: "star.fill"), for: .normal)
        } else {
            favoriteDeffTeam.setImage(UIImage(systemName: "star"), for: .normal)
        }
    }
    
    private func setImages() {
        arenaImageView.image = UIImage(named: game.arenaPhoto)
        attackTeamLogo.image = UIImage(named: game.attackers.logoImage)
        deffTeamLogo.image = UIImage(named: game.defenders.logoImage)
        topPlayerPhoto.image = UIImage(named: game.topPlayerPhoto)
        topPlayerPhoto.layer.cornerRadius = topPlayerPhoto.frame.width / 2
    }
    
    private func setLabels() {
        arenaLabel.text = game.defenders.arena
        dateLabel.text = game.date
        attackTeamLabel.text = game.attackers.teamNameFull
        deffTeamLabel.text = game.defenders.teamNameFull
        gameScore.text = game.score
        cityLabel.text = game.city
        winnerLabel.text = game.winner
        topPlayerLabel.text = game.topPlayer
    }
}
