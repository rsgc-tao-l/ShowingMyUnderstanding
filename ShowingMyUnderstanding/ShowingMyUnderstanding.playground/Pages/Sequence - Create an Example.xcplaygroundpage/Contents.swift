/*:
 [Previous](@previous) / [Next](@next)
 
 # Sequence - Create an Example
 
 Create an example where overlapping shapes combine to create an image.
 
 You can find a simple image on the Internet and attempt to reproduce it.
 
 Or, you can create your own.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

//mouth
canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = true
canvas.drawEllipse(centreX: 150, centreY: 70, width: 90, height: 40)
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.fillColor = Color.white
canvas.drawRectangle(centreX: 150, centreY: 0, width: 300, height: 150)

//draw the face
canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = true
canvas.drawEllipse(centreX: 150, centreY: 150, width: 160, height: 200)
// his ears
for x in stride(from: 1, through: 80, by: 1){
    canvas.borderColor = Color(hue: Float(x), saturation: 100, brightness: 90, alpha: 50)
    canvas.drawEllipse(centreX: 80, centreY: 205, width: x, height: x)
    canvas.drawEllipse(centreX: 220, centreY: 205, width: x, height: (x))
}

//eyes.and eyeballs.
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.fillColor = Color.black
canvas.borderColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
canvas.drawEllipse(centreX: 120, centreY: 163, width: 20, height: 50)
canvas.drawEllipse(centreX: 180, centreY: 163, width: 20, height: 50)
canvas.drawShapesWithFill = true
canvas.drawEllipse(centreX: 120, centreY: 145, width: 14, height: 14)
canvas.drawEllipse(centreX: 180, centreY: 145, width: 14, height: 14)

//nose
canvas.drawEllipse(centreX: 150, centreY: 110, width: 7, height: 7)




// Replace this comment and add your code below...

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
