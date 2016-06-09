/*:
# Enumerations
 
Sometimes, you want to make a series of categories of things in your program. The actual value of the categories themselves don't matter, just that they're seen as something distinct.
 
Enter `enum`. Here's an example of an `enum`, representing the 4 cardinal directions
*/
enum CardinalDirection {
    case North, East, South, West
}

// example of how you would use this
CardinalDirection.North
CardinalDirection.East
CardinalDirection.South
CardinalDirection.West
/*:
 Given this, you can make yourself a `CardinalDirection` like this:
 */
let direction: CardinalDirection = .North
/*:
 Notice the value `.North` that we gave our `direction` variable. This is actually a shortened form of `CardinalDirection.North` – because we gave Swift the type when we declared our variable, it can assume that we're looking at values in the `CardinalDirection` enum.
 
 `enum`s in Swift work exceedingly well in conjunction with the `switch` statement. For example, say we want to update the x and y coordinates of a player traveling in one of the directions:
 */
var playerPosition: (x: Int, y: Int) = (2, 3) // a tuple!

switch direction {
case .North:
    playerPosition.y += 1
case .South:
    playerPosition.y -= 1
case .East:
    playerPosition.x += 1
case .West:
    playerPosition.x -= 1
}

playerPosition
/*:
 ## Enumerations with Raw Values
 
 In the previous example, the underlying type of `CardinalDirection` didn't matter – because it was an enum, we couldn't convert it to an Int value or similar. But what if we wanted to associate different values to our enums?
 
 You can declare an enum with an _implicitly assigned raw value_:
 */
enum Month: Int {
    case January = 1,
    February,
    March,
    April,
    May,
    June,
    July,
    August,
    September,
    November,
    December
}
/*:
 You can then access the raw value of an enum by calling its `.rawValue`:
 */

let month = Month.April
month.rawValue

/*:
 Notice that we didn't provide Swift with raw values for any of the months other than `.January`. That's because, for Int values specifically, Swift will automatically assign raw values with increasing numbers by 1. So, `.February` has a `rawValue` of 2, and `.March` has a `rawValue` of 3, etc.
 */
/*:
 ## More Enumeration Techniques
 Enumerations have a ton of features, and are very powerful in Swift.  Far more powerful than in most languages, in fact. To see what else is possible, check out [Apple's documentation on enumerations.](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Enumerations.html) 
 */
/*:
[Previous](@previous) | [Table of Contents](P00-Table-of-Contents) | [Next](@next)
*/
