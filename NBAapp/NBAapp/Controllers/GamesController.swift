//
//  GamesController.swift
//  NBAapp
//
//  Created by Руслан Сафин on 13.11.2021.
//

import UIKit

protocol GamesControllerDelegate {
    func updateModel(with: Game, byIndex: Int)
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
        tabBarController?.tabBarItem.image = UIImage.init(systemName: "sportscourt")
    }
}

//MARK: - Extension
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
        gameDetailedlVC.currentIndex = indexPath.row
        gameDetailedlVC.delegate = self
        
        tableView.deselectRow(at: indexPath, animated: false)
    }
}

extension GamesController: GamesControllerDelegate {
    func updateModel(with game: Game, byIndex index: Int) {
        games[index].attackIsFavorite = game.attackIsFavorite
        games[index].deffIsFavorite = game.deffIsFavorite
        tableView.reloadData()
    }
}
