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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
