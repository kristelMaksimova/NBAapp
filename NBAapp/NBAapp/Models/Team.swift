//
//  Team.swift
//  NBAapp
//
//  Created by Станислав Буйновский on 13.11.2021.
//

import Foundation

struct Team {
    let id: Int
    let teamName: String
    let founded: String
    let city: String
    let arena: String
    let headCoach: String
    let logoImage: String
    let lineup: [String]
    var teamNameFull: String {
        "\(city) \(teamName)"
    }
    
    static func getTeams() -> [Team] {
        var result: [Team] = []
        let dataManager = DataManager.shared
        let teamsList = dataManager.teams
        let lineUps = dataManager.teamsLineUps
        let results = dataManager.games
        
        for team in teamsList {
            let id = Int(team["id"] ?? "") ?? 0
            let teamName = team["teamName"] ?? ""
            let founded = team["Founded"] ?? ""
            let city = team["City"] ?? ""
            let arena = team["Arena"] ?? ""
            let headCoach = team["Head Coach"] ?? ""
            let logoImage = team["logoImage"] ?? ""
            let lineup = lineUps[teamName] ?? []
            
            let team = Team(id: id,
                            teamName: teamName,
                            founded: founded,
                            city: city,
                            arena: arena,
                            headCoach: headCoach,
                            logoImage: logoImage,
                            lineup: lineup)
            result.append(team)
        }
        
        return result
    }
}
