//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

typealias Point = Int

var points:Point = 0
let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
label.backgroundColor = UIColor.whiteColor()
label.text = "Points: \(points)"
label.textAlignment = .Center
label.font = UIFont.boldSystemFontOfSize(15)

let currentPage = XCPlaygroundPage.currentPage
currentPage.liveView = label

func giveUserIntroductionPoints(points pointsToGoUp: Point) {
    
    UIView.animateWithDuration(0.22) {
        
        let currentPoints = points
        let futurePoints = points + pointsToGoUp
        
        UIView.setAnimationRepeatCount(Float(pointsToGoUp))
        
        label.alpha = 0.90
        
        for var i in currentPoints ... futurePoints {
            label.text = "Points: \(i)"
            print("i \(i)")
            i += 1
            
        }
        
        points = futurePoints
        
    }
    
}

giveUserIntroductionPoints(points: 10)
giveUserIntroductionPoints(points: 30)

currentPage.needsIndefiniteExecution = true

