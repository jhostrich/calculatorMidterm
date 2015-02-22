//
//  File.swift
//  CalcButton
//
//  Created by Johanna Ostrich on 2/22/15.
//  Copyright (c) 2015 Johanna Ostrich. All rights reserved.
//

import UIKit

// Sets the animation and border color on the buttons
class CalculatorButton : UIButton {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // Adds border
        self.layer.borderColor = UIColor.darkGrayColor().CGColor
        self.layer.borderWidth = 0.5
        
        // Add animation for touching down
        self.addTarget(self, action: "hitButton:", forControlEvents: .TouchDown)
        
        // Add animation for releasing
        self.addTarget(self, action: "releasedButton:", forControlEvents: .TouchUpInside)
    }

    // Button darkens when you touch it
    func hitButton(sender: AnyObject) {
        alpha = 0.9
    }
    
    // Button slowly lightens when you release it
    // AllowUserInteraction lets us interrupt the animation, ie pressing button twice will start the animation over again
    func releasedButton(sender: AnyObject) {
        UIView.animateWithDuration(1, delay: 0, options: .CurveEaseOut | .AllowUserInteraction, animations: {
            self.alpha = 1
            }, completion: nil)
    }

    
}




