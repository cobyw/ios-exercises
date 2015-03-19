import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    // WORK HERE
    let sentence = " My favorite cheese is " + cheese + "."
    return sentence
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

var numberArray = [1, 2, 3, 4]
// Add 5 to this array
numberArray.append(5)
// WORK HERE

var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
// WORK HERE
numberDictionary[5] = "five"

numberDictionary /*so I can see that it works in the playground, also see the arbitrary order*/

/*
Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
for x in 1...10
{
    println("\(x)")
}

// Use a half-closed range loop to print 1 - 10, inclusively
for x in 1..<10
{
    println("\(x)")
}


let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // WORK HERE
    var favoriteDrink = [String]()
    //need to go through the array of characters
    for var x = 0; x < characters.count ; x++
    {
        favoriteDrink.append (characters[x]["favorite drink"]!) /*not sure what that ! does but it works when I put it in*/
    }
    return favoriteDrink
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks
/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in
var stringOutput = ""
for var x = 0; x < strings.count; x++
{
    stringOutput += strings[x]
    //if it is not the last entry add an ;
    if(x+1 != strings.count)
    {
         stringOutput += ";"
    }
    
}
println("\(stringOutput)")

let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
// WORK HERE

let alphaCereal = sorted(cerealArray) /*that was easy*/






