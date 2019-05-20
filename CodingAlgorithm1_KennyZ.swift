//
//  CodingAlgorithm1_KennyZ.swift
//  
//
//  Created by macbook-air on 2019-05-17.
//

import Foundation

let duplicatearray = [2,1,3,5,4,1,4,3,2,4,5,3]

func firstDuplicatedElement(in array: [Int]) -> Int? { //returns first duplicated integer in array
    let noOfObjects: Int = array.count - 1 // in natural numbers, subtract to work with computer. Index ranges from 0-5, not 1-6
    var retrievedDuplicate: Int? = nil
    
    for initalValue in 0...noOfObjects { //inital value cannot exceed array range or crash will occur!
        for i in 1...noOfObjects {
            if (array[initalValue] == array[i]) {  // scan from index integer (selected) to end for duplicates, shift up by one when duplicate not found
                if (retrievedDuplicate == nil) { //after first duplicate is found, ignore other duplicates
                    retrievedDuplicate = array[initalValue]
                }
            }
        }
    }
    return retrievedDuplicate // returns the duplicate value
}

print(firstDuplicatedElement(in: duplicatearray)!)
// prints 2
