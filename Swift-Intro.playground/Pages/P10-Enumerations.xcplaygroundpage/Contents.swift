/*:
# Enumerations
 
Sometimes, you want to make a series of categories of things in your program. The actual value of the categories themselves don't matter, just that they're seen as something distinct.
 
Enter `enum`. Here's an example of an enum, representing the 4 cardinal directions
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
 
 enums in Swift work exceedingly well in conjunction with the `switch` statement. For example, say we want to update the x and y coordinates of a player traveling in one of the directions:
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
 ## Enumerations with Associated Values
 
 In the previous example, the underlying type of `CardinalDirection` didn't matter – becuase it was an enum, we couldn't convert it to an Int value or similar. But what if we wanted to associate different values to our enums?
 
 You can declare an enum with an _associated type_:
 */

enum ScannableCode: Int {
    case UPC_A = 1,
    UPC_E,
    QR_Code
}

/*:
 You can then access the associated value of an enum by calling its `.rawValue`:
 */

let qr = ScannableCode.QR_Code
qr.rawValue

/*:
 Notice that we didn't provide Swift with associated values for `UPC_E` and `QR_Code`. That's because for Int values specifically, Swift will automatically associate values with increasing numbers by 1. So, `UPC_E` has a `rawValue` of 2, and `QR_Code` has a `rawValue` of 3.
 */
/*:
[Previous](@previous) | [Table of Contents](P00-Table-of-Contents) | [Next](@next)
*/
