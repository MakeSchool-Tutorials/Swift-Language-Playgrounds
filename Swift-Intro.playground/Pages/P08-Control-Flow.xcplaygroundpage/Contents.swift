/*:
 # Control Flow
 In this section, we'll cover how to use the following statments in Swift: `if`, `for`, `while`, and `switch`.
 
 ## `if` statments
 A simple `if` statment in Swift looks like the following:
 */
let isHuman = true

if isHuman {
    print("I'm a human")
} else {
    print("Non human")
}
//: Note that there's no parentheses around the condition - they're optional in Swift.
/*:
 ## `for-in` Loops
 The `for-in` loop performs a set of statements for each item in a sequence.
 */
let cities = ["New York", "Paris", "London", "Shanghai"]

for city in cities {
    print("I live in \(city)")
}
/*:
 The `for-in` loop is similar to a Python `for` loop or the Java `enhanced for` loop.
 
 We can also use a `for-in` with a range of numbers:
 */

for index in 1...3 {
    print("I can count to \(index)")
}
/*:
The `...` is called the _closed range operator_. It generates a range that is _inclusive_ of both the first and last number. There's also a _half-open range operator_, which looks like this: `a..<b`. That will generate a range that includes a, but excludes b.
 */
for i in 1..<5 {
    print(i)
}
/*:
 If you want access to both the index number and the element value of a certain array, there's a way to do that too! Simply enumerate over `cities.enumerate()`, which gives you a _tuple_ containing the index and element.
 */
for (index, element) in cities.enumerate() {
    print("at \(index): \(element)");
}
/*:
 ## `while` Loops
 A `while` loop keeps running as long as its condition is `true`.
 */
var result = 1

while result < 60 {
    result *= 5
}

print(result)
/*:
 `result` will be updated as follows: 1, 5, 25, 50, 125. Notice that the loop ran 4 times, but it stopped once `result` became more than 60.
*/
/*:
 ## `switch` statement
 A switch statement allows you to define what happens for specific values of a variable.
 Here, we decide what to do based on what `grade` is. We could do the same thing with lots of `if` statements, but the `switch` syntax is more compact and easier to read.
 */
let grade = "A"

switch grade {
case "A":
    print("Excellent grade")
case "B":
    print("Good grade")
case "C":
    print("Passing grade")
default:
    print("Unknown grade")
}
/*:
 Two important things you should keep in mind when using `switch` in Swift:
 * You don't need to add a `break` statment after every condition. (Yay!)
 * The `default` case is like an `else` case that would run if non of the previous conditions are met. Every `switch` statment must have a `default` case.
 */
/*:
 For more details on what we covered here, please visit [Apple's control flow guide.](https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html#//apple_ref/doc/uid/TP40014097-CH9-ID120)
 */
/*:
[Previous](@previous) | [Table of Contents](P00-Table-of-Contents) | [Next](@next)
*/
