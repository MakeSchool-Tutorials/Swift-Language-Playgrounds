//: [Previous](@previous)
import Foundation

/*:
 # Static Properties
 
 Sometimes, you don't want there to be one variable instance for each property that you define in a class. Take for instance:
 */

class Student {
    var numStudents = 0
    let name: String
    
    init(name: String) {
        self.name = name
        self.numStudents += 1
    }
}

/*:
 Here, we want `numStudents` to increment by 1 each time a new Student is initialized. But, you'll notice that because there's a `numStudents` variable initialized for each student, the `numStudents` is 1 for all instances:
 */

let bob = Student(name: "Bob")
bob.numStudents
let harry = Student(name: "Harry")
harry.numStudents
let jessica = Student(name: "Jessica")
jessica.numStudents

/*:
 This is where _static properties_ come in. Inside of a class, you can mark a variable as static, like this:
 
     class Student {
        static var numStudents = 0
     }
     
 Try making this change to the above code now.
 
 ## Errors!
 
 Don't worry. When you declare something as _static_, it no longer becomes tied to each class _instance_; rather, there is only one variable tied to all instances of the class. So, `self.numStudents` doesn't really make sense, since `numStudents` is tied to the Student class as a whole, not to individual students.
 
 So, we change the `self.numStudents += 1` to:
 
    Student.numStudents += 1
 
 Do the same thing to the statements `bob.newStudents` and `harry.newStudents`. Notice as each student is initialized, the `numStudents` value increases by 1!
 
 */


//: [Next](@next)
