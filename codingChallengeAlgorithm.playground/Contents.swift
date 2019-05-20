//: Playground - noun: a place where people can play

//Algorithm Challenge 1: Return First Duplicate

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


//Algorithm Challenge 2: Is Palindrome?
let teststring = "abcdcba"; // from 0 to (string.count - 1) (it displays from 1 onward)

func isPalindrome (in string: String) -> Bool {  // example is radar
    var reversedString: String = ""
    let numberofCharacters: Int = string.count - 1
    
    for i in 0...numberofCharacters { //creates a new string that is the "reversed" version of the input
        reversedString.append(string[string.index(string.startIndex, offsetBy: numberofCharacters - i)])
    }
    return (string == reversedString) // compares the original with the newly formed string
}

print(isPalindrome(in: teststring))
// prints out true
