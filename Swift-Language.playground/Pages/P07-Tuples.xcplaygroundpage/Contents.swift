/*:
 ![Make School Banner](./swift_banner.png)
# Tuples
 
So far, we've come across ways of packing multiples of data into entities – things like arrays to pack an ordered list of elements of the same type, and dictionaries to maintain a set of key-value pairs. But what if you just wanted a quick solution to pack together 2 or 3 things, without the values being necessarily of the same type?
 
 Enter tuples: in Swift, when you group together a comma-separated list of expressions in parentheses, you automatically create a tuple containing it. For example, say we're tracking coordinates for a game of Battleship:
 */
let target = (2, 3)
/*:
 Option-click on the `target` variable above. What does Xcode say the type is?
 
 That's right. In this example, `target` has a type of `(Int, Int)`. We can do other things, too:
 */
let anotherTarget: (Int, Int) = (1, 1)
let applePrice: (String, Double) = ("Apple", 1.00);
let coordinate: (x: Int, y: Int) = (2, 3)
/*:
 That last one is an example of a _named tuple_. Normally, you retrieve elements of tuples by appending `.0`, `.1`, etc. to their variable, like this:
 */
let itemName = applePrice.0
let itemPrice = applePrice.1
/*:
 This doesn't make too obvious as to what `.0` and `.1` represents, though – so Swift allows you to _name_ your tuple members by including it in the declaration, as seen above. Now, you can retrieve your x and y coordinates:
 */
let xCoord = coordinate.x
let yCoord = coordinate.y
/*:
 This syntax of named tuples is similar to the syntax of functions that you'll encounter later, so keep an eye out!
 */


/*:
 ### Challenge
 
 Tuples allow you to group data together. Ideally the information is related. These not lists but share some similar features. A Tuple is not a dictionary though it shares some features. Use a Tuple when an array or dictionary is more than you need. Remember, arrays and dictionaries come with a lots of features like: count, append, insert() etc. Tuples don't have extra features they just group a handful of values together. 
 
 Math is great, you like math, and math likes you! Why not use it when you program! When making games you'll often want to know the distance between two coordinates, or the angle. Locations in 2d space are always defined by x and y coordnites. Tuples might be a good way to group these together in a convenient package.
 
 Imagine you've made a game with a rock that will travel from one corner of the screen to the far corner.
 
 - 1) Define a variable named startCoord. It should be a tuple with x = 0, and y = 0.
 - 2) Define another variable called endCoord. Set this to a tuple with x = 375, and y = 667. 
 - 3) How long is the trip? Remember Pythagoras? He's the guy that found that badass theorem that tells you the length of the diagonal side of a right triangle. When positioning things on the screen in an app it's all right triangles, thank you Pythagoras! If the sides at right angles are a and b, diagonal side is c. The forumal is sqrt(a * a + b * b) to get c. Use this to get the length from startCoord to endCoord. Print the answer.
 
 - 4) Here's a new problem. Imagine you are creating an app that will allow people to send money from one phone to another. How do you keep track of the money? You can use a Double but what about the currency? If I live in the US and I type 1.00. That's really one US Dollar. In Canada 1.00 is less less. The day I wrote this 1.00 USD is worth 1.29 CAD. Imagien you'd like you app to be able to pass around dollar amounts along with the currency type! Create a variable that has a value of 1.00 and a currency type of "usd"
 
 - 5) Now convert your us money into CAD. Create a new tuple with a type of "cad", and a value that is the value of the first variable multiplied by 1.29. 
 
 - 6) Try that again. Create an new variable that will contain Australian dollars. Make a new variable that will have a type of "AUD", and a value of the us dollar multiplied by 1.36.
 
 
- 7) Print a message that displays the value and the type for each of your variables. Something like: "[usValue] [usType] is [caValue] [caType]"
 
 */


// Write your answers here: 











/*: 
 ### Answer 
 
 */

/*
// 1)
var startCoord = (x: 0.0, y: 0.0) // Using a Double here means you don't have to convert the value below.

// 2)
var endCoord = (x: 375, y: 667) // These values are type Int

// 3) something like this though your asnwer might look different
import Foundation

// endCoord did no use a Double value so we need to convert the values to Double.
var length = sqrt(startCoord.x * startCoord.x + Double(endCoord.x) * Double(endCoord.y))
print(length)

// 4) 
var money = (type: "usd", value: 1.0)

// 5) 
var cmoney = (type:"cad", value: money.value * 1.29)

// 6) 
var amoney = (type:"aud", value: money.value * 1.36)

// 7) 
print("\(money.value) \(money.type) is \(cmoney.value) \(cmoney.type)")

 */



/*:
[Previous](@previous) | [Table of Contents](P00-Table-of-Contents) | [Next](@next)
*/
