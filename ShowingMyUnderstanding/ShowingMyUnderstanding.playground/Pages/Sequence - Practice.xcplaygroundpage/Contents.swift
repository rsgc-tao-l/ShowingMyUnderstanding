/*:
 [Previous](@previous) / [Next](@next)
 
 # Sequence - Practice
 
 When does sequence matter?
 
 Here is an example of an image that is created and depends on statements being run in a certain order:
 
 ![overlapping_shapes](overlapping_shapes.png "Overlapping Shapes Logo")
 
 In this shape, there are lines and circles used.
 
 Color and alpha (transparency) matter.
 
 Try reproducing this image for practice.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

// Setting color
canvas.lineColor = Color(hue: 190, saturation: 80, brightness: 80, alpha: 100)
//Blue line
canvas.drawLine(fromX: 80, fromY: 225, toX: 80, toY: 65, lineWidth: 74)
//two end circles on blue
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.fillColor = Color(hue: 190, saturation: 80, brightness: 80, alpha: 100)
canvas.drawEllipse(centreX: 80, centreY: 225, width: 74, height: 75)
canvas.drawEllipse(centreX: 80, centreY: 65, width: 74, height: 75)
//second blue line
canvas.drawLine(fromX: 80, fromY: 225, toX: 150, toY: 65, lineWidth: 74)
//middle circle
canvas.drawEllipse(centreX: 150, centreY: 65, width: 74, height: 75)
//Red lines and cricles
canvas.fillColor = Color(hue: 7, saturation: 80, brightness: 90, alpha: 100)
canvas.lineColor = Color(hue: 7, saturation: 80, brightness: 90, alpha: 100)
canvas.drawLine(fromX: 150, fromY: 65, toX: 220, toY: 225, lineWidth: 74)
canvas.drawEllipse(centreX: 150, centreY: 65, width: 74, height: 75)
canvas.drawEllipse(centreX: 220, centreY: 225, width: 74, height: 75)
//last line and circle in red
canvas.drawEllipse(centreX: 220, centreY: 65, width: 74, height: 75)
canvas.drawLine(fromX: 220, fromY: 225, toX: 220, toY: 65, lineWidth: 74)


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
