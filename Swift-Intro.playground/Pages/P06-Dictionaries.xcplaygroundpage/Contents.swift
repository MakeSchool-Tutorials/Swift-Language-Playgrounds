/*:
 # Dictionaries
 
 Dictionary is a collection type that can store multiple values, and each value has a unique key associated with it. (If you know Python, you may be familiar with Python dictionaries; in Java these are called HashMaps.) Unlike arrays, dictionaries are _unordered_, which means they do not keep the values in any particular order. Dictionaries are helpful in situations where you want to quickly look up a value based on its unique key.
 
 ## Instantiation
 Let's jump right in and define a dictionary variable.
 */
var cities: [String: String] = ["New York City": "USA", "Paris": "France", "London": "UK"]
/*:
 As you can see, the type of a dictionary depends on both the type of its key and the type of its value. The syntax to declare a dictionary type is `[<key type>: <value type>]`. In the example above, the key and the value are both `String`. In this case, the key is the name of a city, and the value is the country that the city is in.
 Just like arrays, the type of the dictionary can be inferred, so the `[String : String]` part is not strictly necessary.
 
 Also like arrays, you can both instantiate and place items in a dictionary using a literal, in this case a _dictionary literal_, which you can see on the right-hand side of the expression. As you can see, place a colon `:` between each key and its corresponding value, and use a comma `,` to separate each key-value pair.
 */
/*:
## Examine the Dictionary
 To count the number of key-value pairs, you can use the `count` property just like arrays. `isEmpty` works as well.
 */
print("The dictionary contains \(cities.count) items.")
/*: */
/*:
 ## Using the Dictionary
 You can add a new key-value pair like this:
 */
cities["San Francisco"] = "USA"
/*:
 It's similar to putting a value in an array, except instead of putting the index number inside the brackets, you put the key.
 
 You can also the change the value that a key is associated with in the same manner:
 */
cities["San Francisco"] = "United States of America"
/*:
 When trying to retrieve a value for a key, there is a possibility that key-value pair does not exist, so you have to make sure you check for this case. As a result, it is best to use optional binding to retrieve a value from the dictionary:
 */
if let country = cities["London"] {
    print("London is in \(country).")
} else {
    print("The dictionary does not contain London as a key.")
}
/*:
 You can remove a key-value pair simply by setting the key's value to nil:
 */
cities["London"] = nil
print(cities) //does not contain "London" anymore
/*:
 To empty the dictionary:
 */
cities = [:]
//: - note: `[:]` is the literal for empty dictionary, it can't be `[]` because that means empty array
/*:
 To define a new empty dictionary:
 */
var dictionary = [String: Int]()
// or
var anotherDictionary: [String: Int] = [:]
/*:
 Notice how the type of the values is Int. The value type can be any type you want. The key can also be any type you want. However, the key has to conform to the _hashable_ protocol. This has to do with how the dictionary actually works beneath the hood, but that's out of the scope of this tutorial. All the Swift basic types work as a key, and there are rarely any situations that you will need a custom type to be the key anyway.
 */
/*:
[Previous](@previous) | [Table of Contents](P00-Table-of-Contents) | [Next](@next)
*/
