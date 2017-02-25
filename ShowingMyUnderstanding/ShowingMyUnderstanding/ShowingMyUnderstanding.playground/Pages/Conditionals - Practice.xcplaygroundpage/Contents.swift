/*:
 [Previous](@previous) / [Next](@next)
 
 # Conditionals - Practice
 
 How can conditionals be used to create output?
 
 Create an image where the characteristics depend on the result of the random number generation.
 
 When the random number is 0, the fill for the shape is empty.
 
 When the random number is 1, the fill for the shape is black.
 
 Try creating this image for practice.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

// Generate a random number
let number = random(from: 0, toButNotIncluding: 2)
if number == 1 {
    canvas.fillColor = Color.black
}
else {
    canvas.drawShapesWithFill = false
}
canvas.drawRectangle(bottomLeftX: 150, bottomLeftY: 150, width: 100, height: 100)



// Replace this comment and add your code below...

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
