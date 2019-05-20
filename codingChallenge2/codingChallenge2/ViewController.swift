//
//  ViewController.swift
//  codingChallenge2
//
//  Created by macbook-air on 2019-05-17.
//  Copyright © 2019 macbook-air. All rights reserved.
//

import UIKit

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return imageData.count //returns in natural numbers for number of instances
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:imageDataCell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! imageDataCell
        
        cell.imageName.text = imageData[indexPath.row].name
        cell.imageDateString.text = imageData[indexPath.row].dateString
        cell.imageDescription.text = imageData[indexPath.row].description
        cell.imageSource.image = UIImage(named: imageData[indexPath.row].imageSource)
        
        // Configures the cell and links it to the different properties of the shared struct
        
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        sharedVars.shared.selectedImageString = imageData[indexPath.row].imageSource
        // stores in the shared vars for access in the second screen.
    }
}


extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if (searchText != "") {
            let filteredText = sharedVars.shared.imageData.filter({$0.name.localizedCaseInsensitiveContains(searchText)})
            // the filterText variant of imageData is the user-filtered version of itself, used for search results.
            imageData = filteredText
        }
        else {
            imageData = sharedVars.shared.imageData
        }
        
        tableView.reloadData()
    }
    
}

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBarInput: UISearchBar!
    
    var imageData = [sharedVars.imageInformation()]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        searchBarInput.delegate = self
        // since it is a custom tableviee setup, much of the data source is fed from itself
        
        imageData.removeAll() //clears the default values and prepares to replace with actual info.
        imageData.append(sharedVars.imageInformation.init(name: "ReminderMe", description: "Reminder Onboarding Image", dateString: "April 28, 2019", imageSource: "remindme.png"))
        imageData.append(sharedVars.imageInformation.init(name: "IDK logo", description: "This is IDK", dateString: "June 7, 2019", imageSource: "Group 2.1.png"))
        imageData.append(sharedVars.imageInformation.init(name: "KBencher 3D Testing App (2017)", description: "360STUDIOS (Kenny Zhang)", dateString: "August 19, 2018", imageSource: "360STUDIOSIntro.png"))
        imageData.append(sharedVars.imageInformation.init(name: "Simon Fraser University", description: "goSFU", dateString: "April 28, 2019", imageSource: "SFUimage.png"))
        imageData.append(sharedVars.imageInformation.init(name: "3D GFX Logo", description: "A representation of GFX/SFX in KB8", dateString: "July 7, 2018", imageSource: "GFXIcon.png"))
        // loaded information to display
        
        sharedVars.shared.imageData = imageData // allows data transfer between screens
    }

}

