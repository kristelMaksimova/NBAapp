//
//  GamesModel.swift
//  NBAapp
//
//  Created by Руслан Сафин on 13.11.2021.
//

import Foundation

struct Game {
    let id: Int
    let score: String
    let city: String
    let arena: String
    let arenaPhoto: String
    var attackers: Team
    var defenders: Team
    let topPlayer: String
    let topPlayerPhoto: String
    let winner: String
    let date: String
}

extension Game {
    static func getGames() -> [Game] {
        var arrayOfGames: [Game] = []
        let dataManager = DataManager.shared
        let games = dataManager.games
        let teams = Team.getTeams()
        
        for game in games {
            let id = Int(game["id"] ?? "") ?? 0
            let score = game["Score"] ?? ""
            let city = game["City"] ?? ""
            let arena = game["Arena"] ?? ""
            let arenaPhoto = game["ArenaPhoto"] ?? ""
            let attackers = teams.first {
                $0.teamName == game["Attackers"]
            }
            let defenders = teams.first {
                $0.teamName == game["Defenders"]
            }
            
            guard let attackersTeam = attackers else { return [] }
            guard let deffendersTeam = defenders else { return [] }
            
            
            let topPlayer = game["TopPlayer"] ?? ""
            let topPlayerPhoto = game["TopPlayerPhoto"] ?? ""
            let winner = game["Winner"] ?? ""
            let date = game["Date"] ?? ""
            
            let game = Game(id: id,
                            score: score,
                            city: city,
                            arena: arena,
                            arenaPhoto: arenaPhoto,
                            attackers: attackersTeam,
                            defenders: deffendersTeam,
                            topPlayer: topPlayer,
                            topPlayerPhoto: topPlayerPhoto,
                            winner: winner,
                            date: date)
            arrayOfGames.append(game)
        }
        
        return arrayOfGames
    }
}
