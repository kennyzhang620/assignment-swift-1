# Game of Apps Intern Interview

Thanks for your interest in the Game of Apps developer intern position! This repo contains a list of tasks for you to do, so we can get a gauge of your skill and passion for development. 

You're expected to know the basics of the Git development workflow. If you don't know or you want a review, check out this [tutorial](https://www.raywenderlich.com/179717/open-source-collaboration-using-git-and-github).

## Instructions

The goal is to submit a pull request that accomplishes the following tasks. While the pull requests are public, don't blindly copy others. The follow up interview will involve questions on your submission.

Fork this repository to begin.

## Challenge 1: Algorithms

Your first challenge is to solve two algorithm questions. You'll be judged based on correctness, performance, and code readability.

### Question 1: Return first duplicate

Create a function that accepts an array of integers and returns the first duplicate value. Here's an example:

```swift
let testArray = [2, 4, 5, 1, 3, 5, 4]

if let duplicate = firstDuplicatedElement(in: testArray) {
  print(duplicate) // prints 4
}
```

Here's a function signature to start you off:

```swift
func firstDuplicatedElement(in array: [Int]) -> Int? {
  // your code here
}
```

### Question 2: Is Palindrome?

Create a function that checks if a string is a palindrome. A palindrome is a word that reads the same way even if you read it backwards.

Example palindromes:

- radar
- bob
- asdfdsa

Here's a function signature to start you off:

```swift
func isPalindrome(_ word: String) -> Bool {
  // your code here
}
```

## Challenge 2: iOS

Your second challenge is to develop a small app from scratch. Here are the requirements:

- It should show a list of images.
- Tapping on an image should navigate to a new screen that shows the selected picture

### Notes:

- If you're a bit rusty on your iOS skills, check out this [tutorial](https://www.raywenderlich.com/160521/storyboards-tutorial-ios-11-part-1).

- A good developer tries to write code that is easy to understand. The industry has a set of best practices that focus on writing easy to maintain code. Here's a set of guidelines on these best practices: [Swift Style Guide](https://github.com/raywenderlich/swift-style-guide).
