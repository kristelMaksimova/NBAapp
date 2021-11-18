//
//  GamesController.swift
//  NBAapp
//
//  Created by Руслан Сафин on 13.11.2021.
//

import UIKit

protocol GamesControllerDelegate {
    func updateAttack(with: Game)
    func updateDeff(with: Game)
}

class GamesController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Public properties
    var games = Game.getGames().shuffled()
    
    //MARK: - Override
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.title = "Games"
    }
}

//MARK: - Extension TableView
extension GamesController: UITableViewDelegate, UITableViewDataSource {
    
    //MARK: - TableView data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "gameCell", for: indexPath) as! GamesTableViewCell
        let game = games[indexPath.row]
        
        cell.configure(with: game)
        
        return cell
    }
    
    //MARK: - TableView delegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let gameDetailedlVC = segue.destination as? GameDetailedController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let model = games[indexPath.row]
        gameDetailedlVC.game = model
        gameDetailedlVC.delegate = self
        
        tableView.deselectRow(at: indexPath, animated: false)
    }
}

//MARK: - Extension Delegate
extension GamesController: GamesControllerDelegate {
    
    //MARK: - Methods
    func updateAttack(with game: Game) {
        var resultGames: [Game] = []
        
        let newAttackers = game.attackers
        let newDefenders = game.defenders
        
        for var game in games {
            if game.attackers.teamName == newAttackers.teamName {
                game.attackers.isFavourite = newAttackers.isFavourite
            } else if game.defenders.teamName == newAttackers.teamName {
                game.defenders.isFavourite = newAttackers.isFavourite
            } else if game.defenders.teamName == newDefenders.teamName {
                game.defenders.isFavourite = newDefenders.isFavourite
            } else if game.attackers.teamName == newDefenders.teamName {
                game.attackers.isFavourite = newDefenders.isFavourite
            }
            resultGames.append(game)
            
            games = resultGames
            tableView.reloadData()
        }
    }
    
    func updateDeff(with game: Game) {
        var resultGames: [Game] = []
        
        let newAttackers = game.attackers
        let newDefenders = game.defenders
        
        for var game in games {
            if game.defenders.teamName == newDefenders.teamName {
                game.defenders.isFavourite = newDefenders.isFavourite
            } else if game.defenders.teamName == newAttackers.teamName {
                game.defenders.isFavourite = newAttackers.isFavourite
            } else if game.attackers.teamName == newDefenders.teamName {
                game.attackers.isFavourite = newDefenders.isFavourite
            } else if game.attackers.teamName == newAttackers.teamName {
                game.attackers.isFavourite = newAttackers.isFavourite
            }
            resultGames.append(game)
            
            games = resultGames
            tableView.reloadData()
        }
    }
}
