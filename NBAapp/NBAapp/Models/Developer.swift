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
    let roles: [String]
    let responsibility: [String]
    let telegram: String
    let github: String
    let photo: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

extension Developer {
    static func getDevelopers() -> [Developer] {
        var result: [Developer] = []
        let dataManager = DataManager.shared
        let developersList = dataManager.developers
        
        for developer in developersList {
            let id = Int(developer["id"] ?? "") ?? 0
            let firstName = developer["first name"] ?? ""
            let lastName = developer["last name"] ?? ""
            let roles = developer["roles"]?.components(separatedBy: ", ") ?? []
            let responsibility = developer["responsibility"]?.components(separatedBy: ", ") ?? []
            let telegram = developer["telegram"] ?? ""
            let github = developer["github"] ?? ""
            let photo = developer["photo"] ?? ""
            
            let dev = Developer(id: id,
                                firstName: firstName,
                                lastName: lastName,
                                roles: roles,
                                responsibility: responsibility,
                                telegram: telegram,
                                github: github,
                                photo: photo)
            result.append(dev)
        }
        
        return result
    }
}
