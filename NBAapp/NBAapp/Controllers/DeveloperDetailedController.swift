//
//  DeveloperDetailedController.swift
//  NBAapp
//
//  Created by Станислав Буйновский on 14.11.2021.
//

import UIKit

class DeveloperDetailedController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var rolesLabel: UILabel!
    @IBOutlet weak var responsibilityLabel: UILabel!
    @IBOutlet weak var telegramLabel: UILabel!
    @IBOutlet weak var githubLabel: UILabel!
    
    //MARK: - Public properties
    var developer: Developer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = developer.fullName
        
        setImages()
        setLabels()
    }
}

extension DeveloperDetailedController {
    
    //MARK: - Private methods
    private func setImages() {
        photoImageView.image = UIImage(named: developer.photo)
        let height = photoImageView.bounds.size.height
        photoImageView.layer.cornerRadius = height / 2
    }
    
    private func setLabels() {
        let rolesString = "Role:\n" + developer.roles.joined(separator: ", ")
        rolesLabel.text = rolesString
        
        let responsibilityString = "Responsibility:\n" + developer.responsibility.joined(separator: ", ")
        responsibilityLabel.text = responsibilityString
        
        telegramLabel.text = "Telegram:\n" + developer.telegram
        githubLabel.text = "GitHub:\n" + developer.github
        
    }
}
