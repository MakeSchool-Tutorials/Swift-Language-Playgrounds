/*:
 # Protocols
 
 So far we've learned about classes, and how class inheritance can reduce repeated code by having one class inherit the properties and methods of another. But what if we want multiple classes to have similar functionality without them having to inherit every property and method?
 
 Protocols are a way of doing this: one can think of it as a "contract" that classes can follow. If you're coming from a Java background, protocols in Swift are similar to interfaces in Java. An example: in a social network, `Text`, `Image`s, `Link`s, and other content are all "postable" – that is, they should all have some function that posts the content onto the web. Here, we make a protocol `Postable`:
 */
protocol Postable {
    func post()
}
/*:
 Now, all classes that adopt the protocol Postable must include `post()` as one of their functions:
 */
class Image: Postable {
    func post() {
        // post the image
        print("Image posted!")
    }
}

class Link: Postable {
    let url = "http://xkcd.com"
    
    func post() {
        // post the url
        print("URL \(url) posted!")
    }
}
/*:
- note:
 Unlike class inheritance, classes adopting a protocol only share the function _signature_ that is common to the protocol; the actual implementation of the function is left to the class.
 
 Now you can group `Image`s and `Link`s together, even though they don't share a superclass, because they both conform to `Postable`:
 */
let array: [Postable] = [Image(), Link()]

array[0].post()
array[1].post()
/*:
 To learn more about protocols, you can visit Apple's official documentation [here](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Protocols.html).
 */
/*:
[Previous](@previous) | [Table of Contents](P00-Table-of-Contents) | [Next](@next)
*/
