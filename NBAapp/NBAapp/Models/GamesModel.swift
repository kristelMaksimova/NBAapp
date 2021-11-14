//
//  GamesModel.swift
//  NBAapp
//
//  Created by Руслан Сафин on 13.11.2021.
//

import UIKit

struct Game {
    let id: Int
    let score: String
    let city: String
    let arena: String
    let attackers: String
    let defenders: String
    let topPlayer: String
    let winner: String
    let logoAttack: String
    let logoDeff: String
    let date: String
}

extension Game {
    
    static func getGames() -> [Game] {
        var arrayOfGames: [Game] = []
        let dataManager = DataManager.shared
        let games = dataManager.games
        let teams = dataManager.teams
        
        for game in games {
            
            let id = Int(game["id"] ?? "") ?? 0
            let score = game["Score"] ?? ""
            let city = game["City"] ?? ""
            let arena = game["Arena"] ?? ""
            let attackers = game["Attackers"] ?? ""
            let defenders = game["Defenders"] ?? ""
            let topPlayer = game["TopPlayer"] ?? ""
            let winner = game["Winner"] ?? ""
            let date = game["Date"] ?? ""
            var logoAttack = ""
            var logoDeff = ""
            
            for team in teams {
                let teams = team["teamName"] ?? ""
                
                if teams == attackers {
                    logoAttack = team["logoImage"] ?? ""
                } else if teams == defenders {
                    logoDeff = team["logoImage"] ?? ""
                }
            }
            
            let game = Game(id: id,
                            score: score,
                            city: city,
                            arena: arena,
                            attackers: attackers,
                            defenders: defenders,
                            topPlayer: topPlayer,
                            winner: winner,
                            logoAttack: logoAttack,
                            logoDeff: logoDeff,
                            date: date)
            arrayOfGames.append(game)
        }
        return arrayOfGames
    }
}
