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
        //var guessResponse = String(readLine()!)
//        if guessResponse == "*" {
//            print("Correct!")
//        } else {
//            print("Wrong!")
//        }
    //break?
    default:
        return {x, y in x + y }
    }
    
}


//let mathFunction = mathStuffFactory(opString: array[])


let userInput = readLine() ?? "5 + 5"

//print(userInput.components(separatedBy: " "))

func takeInInput(input:String) -> Double {
    let userInputAsArray = input.components(separatedBy: " ")
    var calcu = 0.0
    if userInputAsArray.count == 3 {
        let mathFunction = mathStuffFactory(opString: userInputAsArray[1]) // A
        
        let num1 = Double(userInputAsArray[0]) ?? 0.0
        let num2 = Double(userInputAsArray[2]) ?? 0.0
        calcu = mathFunction(num1,num2) // B
    }
    //print("your calculation is \(calcu)")
    return calcu
    
}
let result = takeInInput(input: userInput)
print(result)

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


func myLessThanFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
    let filteredArr = inputArray.filter { $0 < 5 }
    return filteredArr
}

//print(myLessThanFilter(arr:))


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
//
