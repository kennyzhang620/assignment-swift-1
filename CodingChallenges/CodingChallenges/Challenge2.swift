//
//  Challenge2.swift
//  CodingChallenges
//
//  Created by Kenny Zhang on 2019-05-15.
//  Copyright © 2019 Kenny Zhang. All rights reserved.
//

import UIKit

class Challenge2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let teststring = "abcdcba"; // from 0 to (string.count - 1) (it displays from 1 onward)
        
        func isPalindrome (in string: String) -> Bool {  // example is radar
            var reversedString: String = "";
            
            for i in 0...(string.count - 1) {
                reversedString.append(string[string.index(string.startIndex, offsetBy: (string.count - 1) - i)])
            }
            return (string == reversedString)
        }
        
        print(isPalindrome(in: teststring));
        // prints out true
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
