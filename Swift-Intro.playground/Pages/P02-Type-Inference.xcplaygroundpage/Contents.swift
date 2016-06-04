/*:
 ## Types
 Did you notice that in the last lesson on variables, we never actually declared the _type_ of any of our variables? That's because Swift has a language feature called _type inference_. That means that the compiler will try to automatically figure out the type of each variable on its own. However, it's often better to be explicit by declaring the type of a variable in the code. That way, both the compiler and other programmers reading the code can be sure of your intention. To excplicitly declare the type of a value (like a `String` or `Int`) in a variable, do the following:
 */
var population: Int = 20
/*:
 From now on, `population` will always be an integer (shortened as `Int`). An integer is a whole number - a number without decimal points. Let's see what happens when we try to set `population` to a decimal number.
 
 Uncomment the following line to see an error:
 */
// population = 15.343234
/*:
 The error says:
 `Cannot assign value of type 'Double' to type 'Int'.` A `Double` is a number that can have decimal points. We told Swift we were going to give it an `Int`, and instead we gave it a `Double`. Swift is a _statically typed_ language, which means once we declare a variable with a type, it can only hold values of that same type from now on. In this case, we told the compiler that `population` is an `Int`, so we can only store `Int` values in it.
 
 __Make sure you comment the line again before continuing.__
 */
/*: 
 ## Common Types
 Here are some of the more common types you'll encounter:
 - **`Int`** - A whole number.
 - **`Float`** - A decimal number.
 - **`Double`** - A double precision decimal number.
 - **`Bool`** - A *boolean* value. Can be `true` or `false`.
 - **`Character`** - A single unicode character.
 - **`String`** - A collection of `Character`. Used to make words or sentences.
*/
let slicesInAPie: Int = 8

let piFloat: Float = 3.1415927

let piDouble: Double = 3.141592653589793

let piesAreAwesome: Bool = true

let piSymbol: Character = "π"

let piSentence: String = "π is cool. My favorite is lemon meringue."

//:
/*:
 ## Type Inference
 
 In Swift, specifying the type of your value is optional. Swift can automatically infer, or guess, the type of value you're assigning to your variable. It's a pretty smart language.
 */
var humans = 10
/*:
 Even though we didn't write:

 `var humans: Int`
 
 Swift automatically knows the type of our variable because we assigned `10` to it, and `10` is clearly an integer value. Let's try assigning a decimal number to `humans`. Remove the comment in the line below to see the error:
 */
// humans = 6.4342
/*:
 Silly programmer! You can't have four tenths of a person! Because Swift automatically inferred that `humans` is an `Int` when we first defined it, Swift won't let us assign a `Double` to it. No partial humans here.
 
 __Make sure you comment the line above again before continuing.__
 
 To check the type that Swift has inferred, hold down the "option" key on your keyboard while clicking on `pi` or `count` below:
 */
let pi = 3.14
var count = 5
/*:
 For more details on what we covered in this tutorial, please visit [Apple's type inference guide.](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID322)
 */
/*:
 ## Type Casting
 
 Sometimes, you'll have an `Int` that you want to convert to a `Double`. Or maybe you'll have a `Double` that you want to convert to an `Int`, to get rid of its fractional component. This process is called _type casting_. Here's how you can do it:
 */
let three = Int(pi)
/*:
 Note that __Swift will NOT automatically cast types for you!__ This is a nice feature, because it prevents you from accidentally casting a type when you didn't mean to.  A consequence of this is that Swift expects numerical operations to only be done on numbers with the same type. For example, you can multiply two `Int`s or you can multiply two `Float`s, but you cannot multiply an `Int` and a `Float`.
 */
let angleInDegrees: Int = 60
	
// Uncomment the line below to see the error
//let radians: Double = angleInDegrees  * pi / 180.0;

// This is the correct way to cast
let radians: Double = Double(angleInDegrees)  * pi / 180.0;
/*: 
[Previous](@previous) | [Next](@next)
 */
