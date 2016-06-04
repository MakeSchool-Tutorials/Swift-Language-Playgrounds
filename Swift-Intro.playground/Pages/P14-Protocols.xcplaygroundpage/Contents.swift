/*:
 # Protocols
 
 So far we've learned about classes, and how class inheritance can group together similar functionality. But what if we want similar functionality without having one class directly inherit from another?
 
 Protocols are a way of doing this: one can think of it as a "contract" that classes can follow. If you're coming from a Java background, Protocols in Swift are similar to Interfaces in Java. An example: in a social network, Text, Images, Links, and other content are all "post-able" – that is, they should all have some function that posts the content onto the web. Here, we make a protocol "Postable":
 */

protocol Postable {
    func post()
}

/*:
 Now, all classes that use the protocol Postable must include `post()` as one of their functions:
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
 Note that unlike class inheritance, classes under a protocol only share the function _signature_ that is common to the protocol; the actual content of the function can be written uniquely to the class.
 
 But, now you can group Images and Links together, even though they don't share a superclass:
 */

let array: [Postable] = [Image(), Link()]

array[0].post()
array[1].post()

/*:
 To learn more about protocols, you can visit Apple's official documentation [here](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Protocols.html).
 */
/*:
[Previous](@previous) | [Table of Contents](P00-Table-of-Contents)
*/
