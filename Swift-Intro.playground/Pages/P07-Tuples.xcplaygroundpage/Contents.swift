/*:
# Tuples
 
So far, we've come across ways of packing multiples of data into entities – things like Arrays to pack an ordered list of elements of the same type, and Dictionaries to maintain a set of key-value pairs. But what if you just wanted a quick solution to pack together 2 or 3 things, without the values being necessarily of the same type?
 
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
 That last one is an example of a _named tuple_. Normally, you would retrieve elements of tuples by appending `.0`, `.1`, etc. to their variable, such as this:
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
[Previous](@previous) | [Table of Contents](P00-Table-of-Contents) | [Next](@next)
*/
