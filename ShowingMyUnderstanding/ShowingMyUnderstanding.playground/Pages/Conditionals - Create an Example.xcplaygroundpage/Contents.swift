/*:
 [Previous](@previous) / [Next](@next)
 
 # Conditionals - Create an Example
 
 Create an example where some aspect of the resulting image depends on using a conditional statement to respond to random number generation.
  
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)
//gun
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 75, width: 100, height: 20)
canvas.drawRectangle(bottomLeftX: 4, bottomLeftY: 95, width: 5, height: 10)
//bullet that varies position depending on the variable generated.
let x = random(from: 210, toButNotIncluding: 300)
canvas.drawRectangle(bottomLeftX: x, bottomLeftY: 85, width: 13, height: 10)

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
