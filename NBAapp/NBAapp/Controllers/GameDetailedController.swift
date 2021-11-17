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
    var currentIndex: Int!
    var delegate: GamesController!
    
    //MARK: - Override
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "\(game.attackers) vs. \(game.defenders)"
        
        setImages()
        setLabels()
        toggle(favoriteAttackTeam)
        toggle(favoriteDeffTeam)
    }
    
    //MARK: - Actions
    @IBAction func buttonPressed(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            if game.attackIsFavorite {
                game.attackIsFavorite = false
            } else {
                game.attackIsFavorite = true
            }
            toggle(favoriteAttackTeam)
            delegate.updateModel(with: game, byIndex: currentIndex)
            
        default:
            if game.deffIsFavorite {
                game.deffIsFavorite = false
            } else {
                game.deffIsFavorite = true
            }
            toggle(favoriteDeffTeam)
            delegate.updateModel(with: game, byIndex: currentIndex)
        }
    }
}

//MARK: - Extension
extension GameDetailedController {
    
    //MARK: - Private methods
    private func toggle(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected // <- проблема скорее всего тут

        switch sender.tag {
        case 0:
            sender.setImage(UIImage(systemName: "star"), for: .selected)
            sender.setImage(UIImage(systemName: "star.fill"), for: .normal)
        default:
            sender.setImage(UIImage(systemName: "star"), for: .selected)
            sender.setImage(UIImage(systemName: "star.fill"), for: .normal)
        }
    }
    
    private func setImages() {
        arenaImageView.image = UIImage(named: game.arenaPhoto)
        attackTeamLogo.image = UIImage(named: game.logoAttack)
        deffTeamLogo.image = UIImage(named: game.logoDeff)
        topPlayerPhoto.image = UIImage(named: game.topPlayerPhoto)
        topPlayerPhoto.layer.cornerRadius = topPlayerPhoto.frame.width / 2
    }
    
    private func setLabels() {
        arenaLabel.text = game.arena
        dateLabel.text = game.date
        attackTeamLabel.text = game.attackers
        deffTeamLabel.text = game.defenders
        gameScore.text = game.score
        cityLabel.text = game.city
        winnerLabel.text = game.winner
        topPlayerLabel.text = game.topPlayer
    }
}
