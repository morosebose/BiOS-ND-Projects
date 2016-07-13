//: [Previous](@previous)
//: ### Exercise 1
//: 1a) Initialize the array, cuteAnimals. It should be of type CuddlyCreature. Type your answer below.
var cuteAnimals = [CuddlyCreature]()
//: 1b) Initialize an array of 5 bools using array literal syntax.
var fiveBools = [true, true, false, false, false]
//: ### Exercise 2
//: Print out the number of spaniels in the array below.
var spaniels = ["American Cocker", "Cavalier King Charles", "English Springer", "French", "Irish Water","Papillon", "Picardy","Russian", "French", "Welsh Springer"]
print (spaniels.count)

//: ### Exercise 3
//: Insert "indigo" into the array below so that its index is after "blue" and before "violet".
var colors = ["red", "orange", "yellow", "green", "blue", "violet"]
colors.insert("indigo", atIndex: 5)

//: ### Exercise 4
//: Insert "English Cocker" into the spaniels array so that its index is before "English Springer".

//: ### Exercise 5
//: Append "Barcelona" to the end of the olympicHosts array.
var olympicHosts = ["London", "Beijing","Athens", "Sydney", "Atlanta"]
olympicHosts.append("Barcelona")


//: ### Exercise 6
//: Remove "Lyla" and "Daniel" from the waitingList array and add them to the end  of the admitted array.
var admitted = ["Jennifer", "Vijay", "James"]
var waitingList = ["Lyla", "Daniel", "Isabel", "Eric"]
admitted += [waitingList[0], waitingList[1]]
waitingList.removeAtIndex(0)
waitingList.removeAtIndex(0)
waitingList

//: ### Exercise 7
//: Using subscript syntax, print out the 2nd and 3rd names from the admitted array.

//: ### Exercise 8
//: We'd like to reverse the string, stringToReverse. We can do this by filling in one line of code in the for-in loop below. Try it out!
let stringToReverse = "desserts"
var reversedString = ""
for character in stringToReverse.characters {
    reversedString.insert(character, atIndex: reversedString.startIndex)
}
print(reversedString, terminator: "")

//: [Next](@next)
