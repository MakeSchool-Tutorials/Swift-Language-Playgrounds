/*:
 # Classes and Structures
 Classes (and structures) will be the building blocks of your app. They're one of the fundamental aspects of _object-oriented programming_, which is the paradigm you'll be using and is one of the most common programming paradigms in use today. One of the most defining aspects of classes and structures is that they have data associated with them, called _properties_ and ways to manipulate that data, called _methods_.
 */
/*:
 ## Classes
 
 Classes are generally used for code that you might want to use multiple times. For example, let's say you need a way to keep track of vehicles in your app. You'd create a class named `Vehicle` with the following properties:
 * The number of `wheels` that the vehicle has, with `4` as the default value.
 * The vehicle's `color`, with `"black"` as the default value.
 */
class Vehicle  {
    var wheels = 4
    var color = "black"
}
/*:
 Notice that unlike variable names, class names should start with an uppercase letter.
 
 Defining our `Vehicle` class allows us to specify the capabilities of every vehicle we have in our app. To create a new vehicle, let's create an instance of our `Vehicle` class.
 */
let myCar = Vehicle()
/*: 
- note: `myCar` is an _instance_ of the class `Vehicle`. An instance is a specific, concrete object created from a class. There can only ever be one `Vehicle` class, but there can be many instances of vehicles created from it.
 
You can access the properties of `myCar` as follows;
 */
myCar.wheels
myCar.color
//: Note: You can see the values of the properties on the right side of your screen.
//: Let's try changing `myCar`'s color:
myCar.color = "red"
myCar.color
/*:
 ## Subclasses
 Let's say that in your app, there are multiple kinds of vehicles. For example, we might have cars, motorcycles and boats. To structure your app well, you'd define a subclass of `Vehicle` called `Car`. A subclass inherits all the properties of its parent class, meaning that `Car` will have a `color` and `wheels` from the moment it's born. To make our `Car` class even better, let's add a new property to it called `bodyStyle`.
 
 Before we start coding, we should keep in mind that even though every `Car` must have a `bodyStyle`, there is no logical default value for `bodyStyle`. For example, the  `Car`'s `bodyStyle` could be a sedan, coupe, van etc. To deal with this problem, we are going to add an _initializer_. An initializer allows you to pass in some parameters to set up the initial state of the class as it's being constructed.
 */
class Car: Vehicle {
    // 1
    let bodyStyle : String
    
    //2
    init(bodyStyle: String) {
        // 3
        self.bodyStyle = bodyStyle
    }
}
/*:
 There are a few things worth mentioning about the previous code:
 1. Since each `Car` will always have one body style that will never be changed, `bodyStyle` is created as a constant using `let`.
 2. Using `init`, we create an initializer that takes in a `String` called `bodyStyle`.
 3. There's something weird going on here. We have two different variables with the name `bodyStyle` inside the `init` method's scope. We have the parameter that was passed in at #2, but we also have the property from #1. To make sure the compiler doesn't get confused about which we're referring to, we use they keyword `self`. `self` refers to this current instance of `Car`, so `self.bodyStyle` refers to the `bodyStyle` property of this `Car`. It's very common to use the same variable name from the property being initialized for paramaters in initializers.
 */
let taxi = Car(bodyStyle: "sedan")

taxi.bodyStyle
taxi.color
taxi.wheels
/*:
 Notice how even though we didn't define `color` and `wheels` within `Car`, they were inherited from `Vehicle`.
 
 Since we definitly don't want our `taxi`'s `color` to be black, let's define a new class called `Taxi` that has `color` as yellow by default and "sedan" as the default body style. Additionally, let's add the following to our `Taxi` class:
 * A `fare` property.
 * A method called `getInfo` that describes our `Taxi`
 
 */
class Taxi: Car {
    var fare : Int
    
    init(fare : Int) {
        self.fare = fare
        super.init(bodyStyle: "sedan")
        self.color = "yellow"
    }
    
    func getInfo() -> String {
        return "I have \(wheels) wheels and I charge $\(fare) per mile."
    }
}
/*:
 * Notice how we are calling `super.init()`. `super` refers to the superclass, which in this case is `Car`. Using `super.init()`, we are able to access the initializer that we created for `Car`.
 
 * Since `fare` is not an optional, we have to set it in `init` before we call `super.init`. We will go more in details into optionals as properties in a tutorial made specifically to explain properties.
 */
let coolTaxi = Taxi(fare: 30)
coolTaxi.fare
coolTaxi.color
coolTaxi.bodyStyle
coolTaxi.wheels

coolTaxi.getInfo()
//: Let's try changing `fare` and `wheels`.
coolTaxi.fare = 5
coolTaxi.wheels = 6

coolTaxi.getInfo()
/*:
 Notice that `getInfo()` returns the value of `fare` at the moment the function is called, so it returns the updated `fare`.
 */
let otherTaxi = Taxi(fare: 100)

otherTaxi.getInfo()
/*:
 Even though `otherTaxi` and `coolTaxi` both belong to the class `Taxi`, their properties are stored differently. For example, changing `otherTaxi.color` does not change `coolTaxi.color`.
 */
otherTaxi.color = "red"

otherTaxi.color
coolTaxi.color

coolTaxi.color = "pink"

otherTaxi.color
coolTaxi.color
/*: */
/*:
 ## Structures
 We can use structures to group related data. Tuples can do this too, but unlike tuples, structures can also have methods. For example, let's define a `struct` (short for structure) that can hold the size of a car.
 */
struct Size {
    var length: Int
    var width: Int
    var height: Int
    
    init(length: Int, width: Int, height: Int) {
        self.length = length
        self.width = width
        self.height = height
    }
    
    func computeVolume() -> Int {
        return length * width * height
    }
}

let smallCarSize = Size(length: 40, width: 20, height: 30)
print(smallCarSize.computeVolume())

let bigCarSize = Size(length: 100, width: 30, height: 50)
print(bigCarSize.computeVolume())
/*:
So far, it looks like we could have accomplished the same thing using a `class` instead of a `struct`. And in fact, we could have! Try replacing the keyword `struct` with `class` and see what happens. In Swift, classes and structs are very similar, but there are some important differences. For one, `struct`s have no inheritance - they cannot be a subclass or superclass of another `class` or `struct`. We don't expect `Size` to ever have any subclasses - it stands on its own, so we made it a `struct` instead of a `class`.
 */
/*:
 ## Classes vs. Structs
 There are major differences between classes and structs. We already talked about how `struct`s don't have inheritance. Another very important distinction is the following:
 * Classes are passed as a reference.
 * Structs are passed by value.
 
 Let's see what that means.
 */
// Classes

var greenVehicle = Vehicle()
var anotherVehicle = greenVehicle

anotherVehicle.color

greenVehicle.color = "green"

anotherVehicle.color
/*:
 The reason `anotherVehicle.color` was changed when we changed `greenVehicle.color` is that `anotherVehicle` and `greenVehicle` are actually both pointing at the same object. The reason this is happening is because when we set `anotherVehicle` to `greenVehicle`, Swift is not copying the object itself to `anotherVehicle`. Swift is copying a reference to the object and setting it to `anotherVehicle`; therefore, both variables are pointing to the same object, because they hold the same reference.
 
 To confirm that `greenVehicle` and `anotherVehicle` are the same thing, we can do the following:
 */
greenVehicle === anotherVehicle
/*:
- note: The `===` is the _reference equality operator_. It checks to see if two references are referring to the same thing. It's different than `==`, the normal Swift equality operator, which checks if two value types have the same value.
*/
// Structs

var coolSize = Size(length: 40, width: 30, height: 35)
var someSize = coolSize

someSize.height

coolSize.height = 20

someSize.height
/*:
 Notice how `someSize.height` wasn't changed when we changed `coolSize.height`. When it comes to structs, Swift creates a new copy of the instance and passes it as a new value to the variable instead of just referencing to it. This applies to passing `struct`s as parameters as well.
 */
/*:
 For more details on what we covered here, please visit [Apple's classes and structures guide.](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/ClassesAndStructures.html)
 */
/*:
[Previous](@previous) | [Table of Contents](P00-Table-of-Contents) | [Next](@next)
*/
