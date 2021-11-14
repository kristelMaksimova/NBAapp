//
//  Developer.swift
//  NBAapp
//
//  Created by Станислав Буйновский on 14.11.2021.
//

import Foundation

struct Developer {
    let id: Int
    let firstName: String
    let lastName: String
    let role: String
    let responsibility: [String]
    let email: String
    let telegram: String
    let github: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getDevelopers() -> [Developer] {
        var result: [Developer] = []
        let dataManager = DataManager.shared
        let developersList = dataManager.developers
        
        for developer in developersList {
            let id = Int(developer["id"] ?? "") ?? 0
            let firstName = developer["first name"] ?? ""
            let lastName = developer["last name"] ?? ""
            let role = developer["role"] ?? ""
            let responsibility = developer["responsibility"] ?? ""
            let email = developer["email"] ?? ""
            let telegram = developer["telegram"] ?? ""
            let github = developer["github"] ?? ""
            
            let dev = Developer(id: id,
                                firstName: firstName,
                                lastName: lastName,
                                role: role,
                                responsibility: [responsibility],
                                email: email,
                                telegram: telegram,
                                github: github)
            result.append(dev)
        }
        
        return result
    }
}
