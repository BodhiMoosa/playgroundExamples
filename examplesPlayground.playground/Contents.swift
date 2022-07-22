import UIKit

// some variable types
// declaring type is fine, but you don't have to unless it's ambiguous
//var inty : Int = 19 is the same as var inty = 19


var inty : Int = 19
var doubly : Double = 19.19
var floaty : Float = 19.19
var stringy : String = "Nineteen"
var booly : Bool = false
var arrayOfStrings : [String] = []
var dictionaryOfStringIntPairs : [String:Int] = [:]

// variables vs constants
let consty = "This value can't be changed once it's set"
var varry = "This value CAN be changed after being set"

func changeVariableToProveThePoint(variableToTakeInAsArgument: String) -> String {
    let newVar = variableToTakeInAsArgument.lowercased()
    return newVar
}

changeVariableToProveThePoint(variableToTakeInAsArgument: varry)

//but what if i want to save that value that was returned from the function?

let newValue = changeVariableToProveThePoint(variableToTakeInAsArgument: varry)

print(newValue)


// for loop!

let loopArray = [
 "first",
 "second",
 "third"
]

// let's create an empty array that can take strings
var newArray : [String] = []

for x in loopArray {
    // x is a string and you can verify by holding option and clicking on x
    newArray.append(x.uppercased())
 /*
  I could have done the following for the exact same end result:
  let newValue = x.uppercased()
  newArray.append(newValue)
  */
}

// for loops can interate over objects in an array; however, they don't have to

for x in (0...loopArray.count - 1) {
    print("array index: \(x)")
    print(newArray[x])
    print("")
}

// this runs the loop once for each number in the range between 0 and the loopArray.count -1
// why -1?
// Arrays are zero-indexed, meaning their first value is at index 0.
// remove the -1 and rerun it, and check the error code in the console output at the bottom



//IF statements!!

var testBool = false

if testBool {
    print("yay!")
} else {
    print("boo!!")
}

// if testBool is the same as if testBool == true
// put an exclamation mark in front of testBool on line 74 and tell me what that ! does

if newArray[0] == "THIRD" {
    print("hello there")
} else if newArray[1] == "THIRD" {
    print("oh, hello")
} else {
    print("no matches? Sad times")
}

// switch statement!
// it's like an if/then statement but different! figure out how it works from the example below

switch testBool {
case true:
    print("the value is true! I can prove it here: \(testBool)")
case false:
    print("the value is false! I can prove it here: \(testBool)")
}


// while loop!

var whileNumber = 0

while testBool {
    whileNumber = whileNumber + 1
    if whileNumber == 5 {
        testBool = false
    }
}


// shorthand options

/*
 
 whileNumber = whileNumber + 1 is the same as whileNumber += 1
 
 Ternary operators! see below
 */


var yesOrNo = ""

if testBool {
    yesOrNo = "yes"
} else {
    yesOrNo = "No"
}

yesOrNo = testBool ? "yes" : "no"

// the ternary operator is a cleaner way to do simple if statements
// you set the value to testBool ? "yes" : "no"
// if testBool is true, you're setting the variable to the value following the ? and if it's false... you get it


