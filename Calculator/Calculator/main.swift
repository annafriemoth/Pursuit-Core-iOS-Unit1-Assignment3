//
//  main.swift
//  Calculator
//
//  Created by Alex Paul on 10/25/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//
import Foundation

print("Welcome to Command Line Calculator. What would you like to calculate?")

//var isCalculating = Bool()

//var calculationResult = Double()
//let result = closureOperation(45, 5)

//var userEntered = readLine()
var theOperatorFromFunction = ""

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
        let operators = ["*", "-", "+", "/"]
        let theOperator = operators.randomElement() ?? "+"
        
        theOperatorFromFunction += theOperator
        print(theOperator)
        if theOperator == "/"{
            return {x, y in x / y }
        } else if theOperator == "*" {
            return {x, y in x * y }
        } else if theOperator == "-" {
            return {x, y in x - y }
        } else if theOperator == "+" {
            return {x, y in x + y }
        } else {
            return {x, y in x + y }
        }
        
    
    default:
        return {x, y in x + y }
    }
    
}




let userInput = readLine() ?? "5 + 5"

//print(userInput.components(separatedBy: " "))

func takeInInput(input:String) -> Double {
    let userInputAsArray = input.components(separatedBy: " ") //["5","+","5"]
    var calcu = 0.0
    if userInputAsArray.count == 3 {
        let mathFunction = mathStuffFactory(opString: userInputAsArray[1]) // A + - * /
        
        let num1 = Double(userInputAsArray[0]) ?? 0.0
        let num2 = Double(userInputAsArray[2]) ?? 0.0
        calcu = mathFunction(num1,num2) // B
    }

    return calcu
}








let result = takeInInput(input: userInput)
print(result)



print("used \(theOperatorFromFunction)")

if theOperatorFromFunction == "" {
    print("we never used box so no ?")
    
    
} else {
    
    print("box is updated and they used a ?")
            print("Guess which operation was used?")
            var guessResponse = String(readLine()!)
            if guessResponse == theOperatorFromFunction {
                print("Correct!")
                } else {
                print("Wrong!")
                }
    
}


//Part 2a: Implement your own filter function
//Your filter will need to support:
//
//Numbers less than a given number
//Numbers greater than a given number
//You only need to filter Ints You will write your own filter method (not using the built in one). Use this as a starting point.
//
//func myFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
//
//}
//Example:
//
//filter 1,5,2,7,3,4 by < 4
//
//1,2,3

//var thing = [1,2,3,4,5].filter
func myCustomFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int]  {
        var finalArray = [Int]()
        for number in inputArray {
            if filter(number) < inputArray {
                finalArray.append(number)
            }
        }
        return finalArray
    }
    // Create empty array var numereey = [Double]()
     // use .components
    
    // then a for loop into that array that i just created
    // add all numbers into another array that's empty
    
    //.append
    


//print(myLessThanFilter(arr:))


//func myGreaterThanFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
//    let userInputAsArray = input.components(separatedBy: " ")
//    return
//}

func mySecondCustomFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int]  {
var finalArray = [Int]()
for number in inputArray {
    if filter(number) > inputArray {
        finalArray.append(number)
    }
}
return finalArray

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

//func myMultiplicationMap(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
//    let mapArr = inputArray.map { $0 * $1 }
//    return mapArr
//}


//func myDivisionMap(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
//    let mapArr = inputArray.map { $0 / $1 }
//    return mapArr
//}



//Part 2c: Implement your own reduce function
//Your reduce will need to support:
//
//Summing an array starting at a given value
//Multiplying an array starting at a given value
//reduce 1,5,2,7,3,4 by + 4
//
//26


//func myReduceFunction(inputArray: [Int]) -> Int {
//    let reducedResult = inputArray.reduce { $0 * $1 }
//}

//repeat while - outside of the function!

//let calcu = mathFunction(10,5)
//print("your calculation is \(calcu)")








