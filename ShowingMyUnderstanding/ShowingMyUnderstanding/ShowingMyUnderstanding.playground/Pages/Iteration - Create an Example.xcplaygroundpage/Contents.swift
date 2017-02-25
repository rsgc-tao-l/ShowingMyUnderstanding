/*:
 [Previous](@previous) / [Next](@next)
 
 # Iteration - Create an Example
 
 Create an example where some aspect of the resulting image depends on using a iteration (loops) to create an image.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)
//lots of guns
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
for x in stride(from: 20, through: 300, by: 58){
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: x, width: 100, height: 20)
canvas.drawRectangle(bottomLeftX: 4, bottomLeftY: x+20, width: 5, height: 10)
//constant bullets at random places.
let gun = random(from: 120, toButNotIncluding: 300)
    canvas.drawRectangle(bottomLeftX: gun, bottomLeftY: x, width: 13, height: 10)
}


// Replace this comment and add your code below...

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
