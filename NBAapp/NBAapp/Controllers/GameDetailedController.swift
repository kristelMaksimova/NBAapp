//
//  GameDetailedController.swift
//  NBAapp
//
//  Created by Руслан Сафин on 13.11.2021.
//

import UIKit

class GameDetailedController: UIViewController {
    
    var game: Game!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = """
                               \(game.attackers) vs. \(game.defenders)
                               """
    }
}
