//
//  GamesController.swift
//  NBAapp
//
//  Created by Руслан Сафин on 13.11.2021.
//

import UIKit

class GamesController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Public properties
    let games = Game.getGames().shuffled()
    
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
        
        tableView.deselectRow(at: indexPath, animated: false)
    }
}
