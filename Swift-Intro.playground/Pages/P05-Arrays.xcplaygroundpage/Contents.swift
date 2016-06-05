/*:
# Arrays
Time to dive into arrays! An array is an ordered list of items.
## Initialization
How to make an array? Let's look at some examples!
*/
let groceryList: [String] = ["eggs", "onions"]
/*:
 This is how you declare and initalize an array. The syntax to declare an array type is defined by surrounding the type of item in the array with square braces. See above, where the type of groceryList is defined as `[String]`. For that reason, `groceryList` is an array of `String`. There are languages where you can have an array of objects with different types, but in Swift, you have to specify the type of the objects that will be stored in the array, and all objects in the array have to be of that type.
 
The declaration above makes use of an _array literal_ to declare the array. The array literal is the part on the right hand side of the expression: `["eggs", "onions"]`. It's just a shorthand way to both instantiate an array, and place items in it at the same time.
 */
/*:
 As you learned before in the section on type inference, Swift is smart enough to realize that your variable is an array and it's of type `[String]`.
 */
let groceryListWithInferredType = ["eggs", "onions"]
/*:
Remember that you can option click `groceryListWithInferredType` to see what type was chosen.
 
To initialize an empty array using initializer syntax:
 */
let emptyArray = [String]()
/*:
This works too:
*/
let anotherEmptyArray: [String] = []
/*: */
/*:
 ## Inspect the Array
 In many cases, it is important to find out the number of items in your array. You can find the number of items easily by looking at the array's `count` property.
 */
let numberOfItems = groceryList.count
print("the grocery list contains \(numberOfItems) items.")
/*: 
 Notice that, just like Java's `.length` property, this is not a property, not a method.
 Sometimes you just want to know whether the array is empty or not:
 */
if groceryList.isEmpty {
    print("The grocery list is empty!")
} else {
    print("The grocery list is not empty!")
}
/*: */
/*:
## Adding Stuff to Arrays
Notice that the above arrays are all defined with the `let` keyword, which makes these arrays immutable (unchangeable). You cannot change these arrays at all in any way, so they stay as they are throughout the program.
 
 Uncomment the line below to see what happens when you try to add an item to the immutable array.
 */
//groceryList.append("bread")
/*:
 It says, "Cannot use mutating member on immutable value: 'groceryList' is a 'let' constant."
 
 Let's now define a mutable array to see what features are available when working with mutable arrays:
 */
var mutableGroceryList = ["eggs", "onions"]
/*:
 To add an item to the end of the array, you can use the append method:
 */
mutableGroceryList.append("yogurt")
/*:
 If you want to add an item to somewhere in the middle of the array, you can specify the index at which you want to insert an item and all the items that follow the newly added item will shift to the right.
 
 Notice how after adding "chips", "yogurt" is shifted to the next index.
 */
mutableGroceryList.insert("chips", atIndex: 2)
/*:
 To combine 2 mutable arrays together:
 */
mutableGroceryList += ["cheese", "ice cream"]
/*:
 To retrieve values from the array, subscript syntax is used. You place the index of the item you are trying to retrieve inside square brackets `[]`. Keep in mind that arrays are zero-indexed (i.e. first item's index is 0, second item's index is 1, etc.)
 */
var firstItem = mutableGroceryList[0]
/*:
 - experiment: Use the space below try to retrieve last item in the array. Assign it to a variable called `lastItem`.
 */
// retrieve the last item here!

/*:
 Of course, you have the ability to remove an item. This will return the removed item.
 */
let removedItem = mutableGroceryList.removeAtIndex(0)
/*:
[Previous](@previous) | [Table of Contents](P00-Table-of-Contents) | [Next](@next)
*/
