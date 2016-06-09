/*:
# Static Properties
 
Sometimes you will want one of your class's properties to have a shared value between all instances of that class.
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
let john = Student(name: "John")
john.numStudents
let jessica = Student(name: "Jessica")
jessica.numStudents
/*:
 This is where _static properties_ come in. Inside of a class, you can mark a variable as static, like this:
 
     class Student {
        static var numStudents = 0
     }
     
 Try making this change to the above code in the `Student` class now.
 
 ## Errors!
 
 Don't worry. When you declare something as _static_, it no longer becomes tied to each class _instance_; rather, there is only one variable tied to all instances of the class. So, `self.numStudents` doesn't really make sense, since `numStudents` is tied to the Student class as a whole, not to individual students.
 
 So, we change the `self.numStudents += 1` to:
 
    Student.numStudents += 1
 
 Do the same thing to the statements `john.numStudents` and `jessica.numStudents`. Notice as each student is initialized, the `numStudents` value increases by 1!
 
 */
/*:
[Previous](@previous) | [Table of Contents](P00-Table-of-Contents) | [Next](@next)
*/
