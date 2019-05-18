//
//  ViewController.swift
//  codingChallenge2
//
//  Created by macbook-air on 2019-05-17.
//  Copyright © 2019 macbook-air. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var searchBarInput: UISearchBar!
    
    var imageData = [sharedVars.imageInformation()]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
        
        imageData = sharedVars.shared.imageData
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return imageData.count //struct.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:imageDataCell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! imageDataCell
        
        cell.imageName.text = imageData[indexPath.row].name
        cell.imageDateString.text = imageData[indexPath.row].dateString
        cell.imageDescription.text = imageData[indexPath.row].description
        cell.imageSource.image = UIImage(named: imageData[indexPath.row].imageSource)
        
        // Configure the cell...
        
        return cell
    }
}

