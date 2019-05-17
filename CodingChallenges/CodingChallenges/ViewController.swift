//
//  ViewController.swift
//  CodingChallenges
//
//  Created by Kenny Zhang on 2019-05-15.
//  Copyright © 2019 Kenny Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let duplicatearray = [2,1,3,5,4,1,4]
        
        func firstDuplicatedElement(in array: [Int]) -> Int? { //returns first duplicated integer in array
            let noOfObjects: Int = array.count - 1 // in natural numbers, subtract to work with computer. Index ranges from 0-5, not 1-6
            var initalValue = 0;
            var retrievedDuplicate = 0;
            
            while (initalValue < noOfObjects) { //inital value cannot exceed array range or crash will occur!
                for i in 1...noOfObjects {
                    if (array[initalValue] == array[i]) {  // scan from index integer (selected) to end for duplicates, shift up by one when duplicate not found
                        retrievedDuplicate = array[initalValue]
                    }
                }
                initalValue = initalValue + 1
            }
            return retrievedDuplicate;
        }
        
        print(firstDuplicatedElement(in: duplicatearray)!)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


