//
//  CodingAlgorithm2_KennyZ.swift
//  
//
//  Created by macbook-air on 2019-05-17.
//

import Foundation

let teststring = "abcdcba"; // from 0 to (string.count - 1) (it displays from 1 onward)

func isPalindrome (in string: String) -> Bool {  // example is radar
    var reversedString: String = "";
    let numberofCharacters: Int = string.count - 1;
    
    for i in 0...numberofCharacters { //creates a new string that is the "reversed" version of the input
        reversedString.append(string[string.index(string.startIndex, offsetBy: numberofCharacters - i)])
    }
    return (string == reversedString) // compares the original with the newly formed string
}

print(isPalindrome(in: teststring));
// prints out true
