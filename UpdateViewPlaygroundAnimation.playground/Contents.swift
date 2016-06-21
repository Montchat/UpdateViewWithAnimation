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
    
    let futurePoints = points + pointsToGoUp
    
    points = futurePoints
    
    UIView.animateWithDuration(0.33, animations: { 
        label.alpha = 0
        }) { (Bool) in
            label.text = "Points: \(points)"
            UIView.animateWithDuration(0.33, animations: { 
                label.alpha = 1
            })
    }
        
}

giveUserIntroductionPoints(points: 10)
giveUserIntroductionPoints(points: 30)
giveUserIntroductionPoints(points: 50)

currentPage.needsIndefiniteExecution = true

