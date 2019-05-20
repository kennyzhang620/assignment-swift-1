//
//  imageRendererViewController.swift
//  codingChallenge2
//
//  Created by macbook-air on 2019-05-18.
//  Copyright © 2019 macbook-air. All rights reserved.
//

import UIKit

class imageRendererViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: sharedVars.shared.selectedImageString)
        // renders image stored in shared variables from selection
    }
}
