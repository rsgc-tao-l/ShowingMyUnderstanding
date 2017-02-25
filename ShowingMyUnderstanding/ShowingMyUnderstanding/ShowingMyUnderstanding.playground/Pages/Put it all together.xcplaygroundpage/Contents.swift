/*:
 [Previous](@previous) / [Next](@next)
 
 # Put it all together
 
 Create an example that sequence, conditionals, and iteration to produce a simple image.
 
 The image need not be eye-catching or elaborate – it should simply demonstrate your ability to combine these programming structures.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)
//blue background
canvas.fillColor = Color.red
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 300, height: 300)
//sun and cloud.
canvas.fillColor = Color.yellow
canvas.drawEllipse(centreX: 0, centreY: 300, width: 105, height: 105)
canvas.fillColor = Color.white
canvas.drawShapesWithBorders = false
canvas.drawEllipse(centreX: 100, centreY: 300, width: 60, height: 60)
canvas.drawEllipse(centreX: 125, centreY: 300, width: 60, height: 60)
canvas.drawEllipse(centreX: 150, centreY: 300, width: 60, height: 60)

//lots of guns
canvas.fillColor = Color.black
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
