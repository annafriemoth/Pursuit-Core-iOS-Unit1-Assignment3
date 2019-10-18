//
//  main.swift
//  Calculator
//
//  Created by Alex Paul on 10/25/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//
import Foundation

print("Welcome to Command Line Calculator")

//var isCalculating = Bool()

//var calculationResult = Double()
//let result = closureOperation(45, 5)

//var userEntered = readLine()

    func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
    switch opString {
    case "+": // A
      return {x, y in x + y } // B
    case "-":
      return {x, y in x - y }
    case "*":
      return {x, y in x * y }
    case "/":
      return {x, y in x / y }
    case "?":
        return {x, y in x * y}
        print("Guess which operation was used?")
        var guessResponse = String(readLine()!)
        if guessResponse == "*" {
        print("Correct!")
        } else {
        print("Wrong!")
        }
        //break?
    default:
      return {x, y in x + y }
    }
       
}


//let mathFunction = mathStuffFactory(opString: array[])

 
let userInput = readLine() ?? "5 + 5"
        
print(Array(userInput))
//print(userInput.components(separatedBy: " "))
        
func takeInInput(input:String) -> Double {
let userInputAsArray = input.components(separatedBy: " ")

let mathFunction = mathStuffFactory(opString: userInputAsArray[1]) // A

let num1 = Double(userInputAsArray[0]) ?? 0.0
let num2 = Double(userInputAsArray[2]) ?? 0.0
    
let calcu = mathFunction(num1,num2) // B

//print("your calculation is \(calcu)")
return calcu

}
        



func myLessThanFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
    let filteredArr = inputArray.filter { $0 < 5 }
    return filteredArr
}
        

func myGreaterThanFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
    let filteredArr = inputArray.filter { $0 > 5 }
    return filteredArr
}

//Part 2b: Implement your own map function
//Your map will need to support:
//
//Multiplying by a given number
//Dividing by a given number
//Example:
//
//map 1,5,2,7,3,4 by * 3
//
//3,15,6,21,9,12

func myMultiplicationMap(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
    let filteredArr = inputArray.map { $0 * $0 }
    return filteredArr
}




//Part 2c: Implement your own reduce function
//Your reduce will need to support:
//
//Summing an array starting at a given value
//Multiplying an array starting at a given value
//reduce 1,5,2,7,3,4 by + 4
//
//26









//repeat while outside of the function!
        
//
//
        
//let calcu = mathFunction(10,5)
//print("your calculation is \(calcu)")
//
