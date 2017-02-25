/*:
 [Previous](@previous) / [Next](@next)
 
 # Iteration - Practice
 
 How can loops be used to make a program more effient?
 
 How can loops be used to create an interesting image from repeated patterns?
 
 Here is an example image:
 
 ![tire-tracks](tire-tracks.png "Tire Tracks")
 
 Try creating this image for practice.
 
 You should only require 6 lines of code at most to produce the image.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)


//setting the rules for the loop
for x in stride(from: 0, through: 300, by: 50){
    for y in stride(from: 50, through: 250, by: 100){
        canvas.drawShapesWithFill = true
        canvas.drawShapesWithBorders = false
        canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 25, height: 10)
        canvas.drawRectangle(bottomLeftX: x + 25, bottomLeftY: y - 25, width: 25, height: 10)
}
}
// Replace this comment and add your code below...


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
