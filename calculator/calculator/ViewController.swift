//
//  ViewController.swift
//  calculator
//
//  Created by Johanna Ostrich on 2/18/15.
//  Copyright (c) 2015 Johanna Ostrich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // --------------
    // Master Outlets
    // --------------
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var radLabel: UILabel!
    
    // ------------------------
    // Basic Calculator Buttons
    // ------------------------
    
    // Functions
    @IBOutlet weak var acButton: UIButton!
    @IBOutlet weak var plusMinusButton: UIButton!
    @IBOutlet weak var percentButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var subtractButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var equalsButton: UIButton!
    @IBOutlet weak var decimalPointButton: UIButton!
    
    // Numbers
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    
    // -----------------------------
    // Scientific Calculator Buttons
    // -----------------------------

    // First Row
    @IBOutlet weak var openParensButton: UIButton!
    @IBOutlet weak var closeParensButton: UIButton!
    @IBOutlet weak var mcButton: UIButton!
    @IBOutlet weak var mPlusButton: UIButton!
    @IBOutlet weak var mMinusButton: UIButton!
    @IBOutlet weak var mRecallButton: UIButton!
    // Second Row
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var xSquaredButton: UIButton!
    @IBOutlet weak var xCubedButton: UIButton!
    @IBOutlet weak var xToTheYButton: UIButton!
    @IBOutlet weak var eToTheXButton: UIButton!
    @IBOutlet weak var tenToTheXButton: UIButton!
    // Third Row
    @IBOutlet weak var oneOverXButton: UIButton!
    @IBOutlet weak var sqrtButton: UIButton!
    @IBOutlet weak var cubertButton: UIButton!
    @IBOutlet weak var xRootOfYButton: UIButton!
    @IBOutlet weak var lnButton: UIButton!
    @IBOutlet weak var log10Button: UIButton!
    // Fourth Row
    @IBOutlet weak var factorialButton: UIButton!
    @IBOutlet weak var sinButton: UIButton!
    @IBOutlet weak var cosButton: UIButton!
    @IBOutlet weak var tanButton: UIButton!
    @IBOutlet weak var eButton: UIButton!
    @IBOutlet weak var eeButton: UIButton!
    // Fifth Row
    @IBOutlet weak var radButton: UIButton!
    @IBOutlet weak var sinhButton: CalculatorButton!
    @IBOutlet weak var coshButton: UIButton!
    @IBOutlet weak var tanhButton: UIButton!
    @IBOutlet weak var πButton: UIButton!
    @IBOutlet weak var randButton: UIButton!

    
    // ----------
    // Calculator
    // ----------
    
    var calc = Calculator()
    
    
    // Indicates if we're viewing secondary buttons
    var secondary: Bool = false
    
    // -----------------------------------------------------------

    // --------------
    // Adam's Changes
    // --------------
    
    func initializeButtonFunctionality() {
        // ------------------------
        // Basic Calculator Buttons
        // ------------------------
        
        // Functions
        self.acButton.addTarget           (self, action: "pressAcButton",           forControlEvents: .TouchUpInside)
        self.plusMinusButton.addTarget    (self, action: "pressPlusMinusButton",    forControlEvents: .TouchUpInside)
        self.percentButton.addTarget      (self, action: "pressPercentButton",      forControlEvents: .TouchUpInside)
        self.divideButton.addTarget       (self, action: "pressDivideButton",       forControlEvents: .TouchUpInside)
        self.multiplyButton.addTarget     (self, action: "pressMultiplyButton",     forControlEvents: .TouchUpInside)
        self.subtractButton.addTarget     (self, action: "pressSubtractButton",     forControlEvents: .TouchUpInside)
        self.addButton.addTarget          (self, action: "pressAddButton",          forControlEvents: .TouchUpInside)
        self.equalsButton.addTarget       (self, action: "pressEqualsButton",       forControlEvents: .TouchUpInside)
        self.decimalPointButton.addTarget (self, action: "pressDecimalPointButton", forControlEvents: .TouchUpInside)
        
        // Numbers
        self.nineButton.addTarget         (self, action: "pressNineButton",         forControlEvents: .TouchUpInside)
        self.eightButton.addTarget        (self, action: "pressEightButton",        forControlEvents: .TouchUpInside)
        self.sevenButton.addTarget        (self, action: "pressSevenButton",        forControlEvents: .TouchUpInside)
        self.sixButton.addTarget          (self, action: "pressSixButton",          forControlEvents: .TouchUpInside)
        self.fiveButton.addTarget         (self, action: "pressFiveButton",         forControlEvents: .TouchUpInside)
        self.fourButton.addTarget         (self, action: "pressFourButton",         forControlEvents: .TouchUpInside)
        self.threeButton.addTarget        (self, action: "pressThreeButton",        forControlEvents: .TouchUpInside)
        self.twoButton.addTarget          (self, action: "pressTwoButton",          forControlEvents: .TouchUpInside)
        self.oneButton.addTarget          (self, action: "pressOneButton",          forControlEvents: .TouchUpInside)
        self.zeroButton.addTarget         (self, action: "pressZeroButton",         forControlEvents: .TouchUpInside)
        
        // -----------------------------
        // Scientific Calculator Buttons
        // -----------------------------
        
        // First Row
        self.openParensButton.addTarget   (self, action: "pressOpenParensButton",   forControlEvents: .TouchUpInside)
        self.closeParensButton.addTarget  (self, action: "pressCloseParensButton",  forControlEvents: .TouchUpInside)
        self.mcButton.addTarget           (self, action: "pressMcButton",           forControlEvents: .TouchUpInside)
        self.mPlusButton.addTarget        (self, action: "pressMPlusButton",        forControlEvents: .TouchUpInside)
        self.mMinusButton.addTarget       (self, action: "pressMMinusButton",       forControlEvents: .TouchUpInside)
        self.mRecallButton.addTarget      (self, action: "pressMRecallButton",      forControlEvents: .TouchUpInside)
        // Second Row
        self.secondButton.addTarget       (self, action: "pressSecondButton",       forControlEvents: .TouchUpInside)
        self.xSquaredButton.addTarget     (self, action: "pressXSquaredButton",     forControlEvents: .TouchUpInside)
        self.xCubedButton.addTarget       (self, action: "pressXCubedButton",       forControlEvents: .TouchUpInside)
        self.xToTheYButton.addTarget      (self, action: "pressXToTheYButton",      forControlEvents: .TouchUpInside)
        self.eToTheXButton.addTarget      (self, action: "pressEToTheXButton",      forControlEvents: .TouchUpInside)
        self.tenToTheXButton.addTarget    (self, action: "pressTenToTheXButton",    forControlEvents: .TouchUpInside)
        // Third Row
        self.oneOverXButton.addTarget     (self, action: "pressOneOverXButton",     forControlEvents: .TouchUpInside)
        self.sqrtButton.addTarget         (self, action: "pressSqrtButton",         forControlEvents: .TouchUpInside)
        self.cubertButton.addTarget       (self, action: "pressCubertButton",       forControlEvents: .TouchUpInside)
        self.xRootOfYButton.addTarget     (self, action: "pressXRootOfYButton",     forControlEvents: .TouchUpInside)
        self.lnButton.addTarget           (self, action: "pressLnButton",           forControlEvents: .TouchUpInside)
        self.log10Button.addTarget        (self, action: "pressLog10Button",        forControlEvents: .TouchUpInside)
        // Fourth Row
        self.factorialButton.addTarget    (self, action: "pressFactorialButton",    forControlEvents: .TouchUpInside)
        self.sinButton.addTarget          (self, action: "pressSinButton",          forControlEvents: .TouchUpInside)
        self.cosButton.addTarget          (self, action: "pressCosButton",          forControlEvents: .TouchUpInside)
        self.tanButton.addTarget          (self, action: "pressTanButton",          forControlEvents: .TouchUpInside)
        self.eButton.addTarget            (self, action: "pressEButton",            forControlEvents: .TouchUpInside)
        self.eeButton.addTarget           (self, action: "pressEeButton",           forControlEvents: .TouchUpInside)
        self.radButton.addTarget          (self, action: "pressRadButton",          forControlEvents: .TouchUpInside)
        // Fifth Row
        self.sinhButton.addTarget           (self, action: "presssinhButton",           forControlEvents: .TouchUpInside)
        self.coshButton.addTarget         (self, action: "pressCoshButton",         forControlEvents: .TouchUpInside)
        self.tanhButton.addTarget         (self, action: "pressTanhButton",         forControlEvents: .TouchUpInside)
        self.πButton.addTarget            (self, action: "pressπButton",            forControlEvents: .TouchUpInside)
        self.randButton.addTarget         (self, action: "pressRandButton",         forControlEvents: .TouchUpInside)
    }
    
    // ------------------------
    // Basic Calculator Buttons
    // ------------------------
    
    // Functions
    func pressAcButton()           { Calculator.shared.reset() }
    func pressPlusMinusButton()    { Calculator.shared.performUnaryOperation("+/-") }
    func pressPercentButton()      { Calculator.shared.performUnaryOperation("%")   }
    func pressDivideButton()       { Calculator.shared.performNewCalculation("/")   }
    func pressMultiplyButton()     { Calculator.shared.performNewCalculation("*")   }
    func pressSubtractButton()     { Calculator.shared.performNewCalculation("-")   }
    func pressAddButton()          { Calculator.shared.performNewCalculation("+")   }
    func pressEqualsButton()       { Calculator.shared.finishCalculation() }
    func pressDecimalPointButton() { Calculator.shared.pressDecimalPoint() }
    
    // Numbers
    func pressNineButton()         { Calculator.shared.pressNumber(9) }
    func pressEightButton()        { Calculator.shared.pressNumber(8) }
    func pressSevenButton()        { Calculator.shared.pressNumber(7) }
    func pressSixButton()          { Calculator.shared.pressNumber(6) }
    func pressFiveButton()         { Calculator.shared.pressNumber(5) }
    func pressFourButton()         { Calculator.shared.pressNumber(4) }
    func pressThreeButton()        { Calculator.shared.pressNumber(3) }
    func pressTwoButton()          { Calculator.shared.pressNumber(2) }
    func pressOneButton()          { Calculator.shared.pressNumber(1) }
    func pressZeroButton()         { Calculator.shared.pressNumber(0) }
    
    // -----------------------------
    // Scientific Calculator Buttons
    // -----------------------------

    // First Row
    func pressOpenParensButton()   { Calculator.shared.openParens()     }
    func pressCloseParensButton()  { Calculator.shared.closeParens()    }
    func pressMcButton()           { Calculator.shared.memoryClear()    }
    func pressMPlusButton()        { Calculator.shared.memoryAdd()      }
    func pressMMinusButton()       { Calculator.shared.memorySubtract() }
    func pressMRecallButton()      { Calculator.shared.memoryRecall()   }
    
    // Second Row
    func pressXSquaredButton()     { Calculator.shared.performUnaryOperation("x^2")  }
    func pressXCubedButton()       { Calculator.shared.performUnaryOperation("x^3")  }
    func pressXToTheYButton()      { Calculator.shared.performNewCalculation("x^y")  }
    func pressEToTheXButton()      { Calculator.shared.performUnaryOperation("e^x")  }
    func pressTenToTheXButton()    { Calculator.shared.performUnaryOperation("10^x") }
    
    // Third Row
    func pressOneOverXButton()     { Calculator.shared.performUnaryOperation("1/x")         }
    func pressSqrtButton()         { Calculator.shared.performUnaryOperation("sqrt")        }
    func pressCubertButton()       { Calculator.shared.performUnaryOperation("cubert")      }
    func pressXRootOfYButton()     { Calculator.shared.performNewCalculation("x_root_of_y") }
    func pressLnButton()           { Calculator.shared.performUnaryOperation("ln")          }
    func pressLog10Button()        { Calculator.shared.performUnaryOperation("log10")       }
    
    // Fourth Row
    func pressFactorialButton()    { Calculator.shared.performUnaryOperation("x!")  }
    func pressSinButton()          { Calculator.shared.performUnaryOperation("sin") }
    func pressCosButton()          { Calculator.shared.performUnaryOperation("cos") }
    func pressTanButton()          { Calculator.shared.performUnaryOperation("tan") }
    func pressEButton()            { Calculator.shared.performUnaryOperation("e")   }
    func pressEeButton()           { Calculator.shared.pressEE()  }
    func pressRadButton()          { Calculator.shared.pressRad() }
    
    // Fifth Row
    func presssinhButton()         { Calculator.shared.performUnaryOperation("sinh") }
    func pressCoshButton()         { Calculator.shared.performUnaryOperation("cosh") }
    func pressTanhButton()         { Calculator.shared.performUnaryOperation("tanh") }
    func pressπButton()            { Calculator.shared.performUnaryOperation("π")    }
    func pressRandButton()         { Calculator.shared.performUnaryOperation("rand") }
    
    
    // -----------------
    // Secondary Buttons
    // -----------------
    func pressYToTheXButton()      { Calculator.shared.performNewCalculation("y^x")     }
    func pressTwoToTheXButton()    { Calculator.shared.performUnaryOperation("2^x")     }
    func pressLogYButton()         { Calculator.shared.performNewCalculation("logy")    }
    func pressLog2Button()         { Calculator.shared.performUnaryOperation("log2")    }
    func pressArcsin()             { Calculator.shared.performUnaryOperation("sin^-1")  }
    func PressArcosButton()        { Calculator.shared.performUnaryOperation("cos^-1")  }
    func pressArctanButton()       { Calculator.shared.performUnaryOperation("tan^-1")  }
    func pressArcsinhButton()      { Calculator.shared.performUnaryOperation("sinh^-1") }
    func pressArcoshButton()       { Calculator.shared.performUnaryOperation("cosh^-1") }
    func pressArctanhButton()      { Calculator.shared.performUnaryOperation("tanh^-1") }
    
    
    // -----------------------------------------------------------
    
    // -----------------
    // Secondary Buttons
    // -----------------
    
    func pressSecondButton() {
        // Switch to secondary buttons
        if !self.secondary {
            // Convert e^x to  y^x
            self.eToTheXButton.setTitle("yˣ", forState: .Normal)
            self.eToTheXButton.removeTarget(self, action: "pressEToTheXButton", forControlEvents: .TouchUpInside)
            self.eToTheXButton.addTarget(self, action: "pressYToTheXButton",      forControlEvents: .TouchUpInside)
            
            
            // Convert 10^x to 2^x
            self.tenToTheXButton.setTitle("2ˣ", forState: .Normal)
            self.tenToTheXButton.removeTarget(self, action: "pressTenToTheXButton", forControlEvents: .TouchUpInside)
            self.tenToTheXButton.addTarget(self, action: "pressTwoToTheXButton", forControlEvents: .TouchUpInside)
            
            // Convert ln to logy
            // It shows an alien instead of a y, but that's pretty cool, eh?
            self.lnButton.setTitle("log𝑦", forState: .Normal)
            self.lnButton.removeTarget(self, action: "pressLnButton",   forControlEvents: .TouchUpInside)
            self.lnButton.addTarget   (self, action: "pressLogYButton", forControlEvents: .TouchUpInside)
            
            // Convert log10 to log2
            self.log10Button.setTitle("log₂", forState: .Normal)
            self.log10Button.removeTarget(self, action: "pressLog10Button", forControlEvents: .TouchUpInside)
            self.log10Button.addTarget   (self, action: "pressLog2Button",  forControlEvents: .TouchUpInside)
            
            // Convert sin to sin^-1
            self.sinButton.setTitle("sin⁻¹", forState: .Normal)
            self.sinButton.removeTarget(self, action: "pressSinButton", forControlEvents: .TouchUpInside)
            self.sinButton.addTarget   (self, action: "pressArcsin",    forControlEvents: .TouchUpInside)
            
            // Convert cos to cos^-1
            self.cosButton.setTitle("cos⁻¹", forState: .Normal)
            self.cosButton.removeTarget(self, action: "pressCosButton",   forControlEvents: .TouchUpInside)
            self.cosButton.addTarget   (self, action: "PressArcosButton", forControlEvents: .TouchUpInside)
            
            // Convert tan to tan^-1
            self.tanButton.setTitle("tan⁻¹", forState: .Normal)
            self.tanButton.removeTarget(self, action: "pressTanButton",    forControlEvents: .TouchUpInside)
            self.tanButton.addTarget   (self, action: "pressArctanButton", forControlEvents: .TouchUpInside)
            
            // Convert sinh to sinh^-1
            self.sinhButton.setTitle("sinh⁻¹", forState: .Normal)
            self.sinhButton.removeTarget(self, action: "pressSinhButton",    forControlEvents: .TouchUpInside)
            self.sinhButton.addTarget   (self, action: "pressArcsinhButton", forControlEvents: .TouchUpInside)
            
            // Convert cosh to cosh^-1
            self.coshButton.setTitle("cosh⁻¹", forState: .Normal)
            self.coshButton.removeTarget(self, action: "pressCoshButton",   forControlEvents: .TouchUpInside)
            self.coshButton.addTarget   (self, action: "pressArcoshButton", forControlEvents: .TouchUpInside)
            
            // Convert tanh to tanh^-1
            self.tanhButton.setTitle("tanh⁻¹", forState: .Normal)
            self.tanhButton.removeTarget(self, action: "pressTanhButton",    forControlEvents: .TouchUpInside)
            self.tanhButton.addTarget   (self, action: "pressArctanhButton", forControlEvents: .TouchUpInside)

        }
        // Switch back to original buttons
        else {
            // Convert back to e^x
            self.eToTheXButton.setTitle("eˣ", forState: .Normal)
            self.eToTheXButton.addTarget   (self, action: "pressEToTheXButton", forControlEvents: .TouchUpInside)
            self.eToTheXButton.removeTarget(self, action: "pressYToTheXButton", forControlEvents: .TouchUpInside)
            
            
            // Convert back to 10^x
            self.tenToTheXButton.setTitle("10ˣ", forState: .Normal)
            self.tenToTheXButton.addTarget   (self, action: "pressTenToTheXButton", forControlEvents: .TouchUpInside)
            self.tenToTheXButton.removeTarget(self, action: "pressTwoToTheXButton", forControlEvents: .TouchUpInside)
            
            // Convert back to ln
            self.lnButton.setTitle("ln", forState: .Normal)
            self.lnButton.addTarget   (self, action: "pressLnButton",   forControlEvents: .TouchUpInside)
            self.lnButton.removeTarget(self, action: "pressLogYButton", forControlEvents: .TouchUpInside)
            
            // Convert back to log10
            self.log10Button.setTitle("log₁₀", forState: .Normal)
            self.log10Button.addTarget   (self, action: "pressLog10Button", forControlEvents: .TouchUpInside)
            self.log10Button.removeTarget(self, action: "pressLog2Button",  forControlEvents: .TouchUpInside)
            
            // Convert back to sin
            self.sinButton.setTitle("sin", forState: .Normal)
            self.sinButton.addTarget   (self, action: "pressSinButton", forControlEvents: .TouchUpInside)
            self.sinButton.removeTarget(self, action: "pressArcsin",    forControlEvents: .TouchUpInside)
            
            // Convert back to cos
            self.cosButton.setTitle("cos", forState: .Normal)
            self.cosButton.addTarget   (self, action: "pressCosButton",   forControlEvents: .TouchUpInside)
            self.cosButton.removeTarget(self, action: "PressArcosButton", forControlEvents: .TouchUpInside)
            
            // Convert back to tan
            self.tanButton.setTitle("tan", forState: .Normal)
            self.tanButton.addTarget   (self, action: "pressTanButton",    forControlEvents: .TouchUpInside)
            self.tanButton.removeTarget(self, action: "pressArctanButton", forControlEvents: .TouchUpInside)
            
            // Convert back to sinh
            self.sinhButton.setTitle("sinh", forState: .Normal)
            self.sinhButton.addTarget   (self, action: "pressSinhButton",    forControlEvents: .TouchUpInside)
            self.sinhButton.removeTarget(self, action: "pressArcsinhButton", forControlEvents: .TouchUpInside)
            
            // Convert back to cosh
            self.coshButton.setTitle("cosh", forState: .Normal)
            self.coshButton.addTarget   (self, action: "pressCoshButton",   forControlEvents: .TouchUpInside)
            self.coshButton.removeTarget(self, action: "pressArcoshButton", forControlEvents: .TouchUpInside)
            
            // Convert back to tanh
            self.tanhButton.setTitle("tanh", forState: .Normal)
            self.tanhButton.addTarget   (self, action: "pressTanhButton",    forControlEvents: .TouchUpInside)
            self.tanhButton.removeTarget(self, action: "pressArctanhButton", forControlEvents: .TouchUpInside)
        }
        
        self.secondary = !self.secondary
    }
    
    // -----------------------------------------------------------
    
    // ----------------
    // Display in Label
    // ----------------
    
    // Previous Value
    func displayPreviousValue(notification: NSNotification) {
        self.displayLabel.text = Calculator.shared.printPreviousValue()
    }
    
    // Current Value
    func displayCurrentValue(notification: NSNotification) {
        self.displayLabel.text = Calculator.shared.printCurrentValue()
    }
    
    // Memory Value
    func displayMemoryValue(notification: NSNotification) {
        self.displayLabel.text = Calculator.shared.printMemoryValue()
    }
    
    // Display Infinity
    func displayInfinity(notification: NSNotification) {
        self.displayLabel.text = "Infinity"
    }
    
    // Display Negative Infinity
    func displayNegativeInfinity(notification: NSNotification) {
        self.displayLabel.text = "-Infinity"
    }
    
    // Error Out
    func displayError(notification: NSNotification) {
        self.displayLabel.text = "Error"
    }
    
    // -----------------------------------------------------------

    // ---------------
    // Degrees/Radians
    // ---------------
    
    func degreesToRadians(notification: NSNotification) {
        self.radButton.setTitle("Deg", forState: .Normal)
        
        // Unhide radLabel
        self.radLabel.hidden = false
    }
    
    func radiansToDegrees(notification: NSNotification) {
        self.radButton.setTitle("Rad", forState: .Normal)
        
        // Hide radLabel
        self.radLabel.hidden = true
    }
    
    // -----------------------------------------------------------
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initializeButtonFunctionality()
        
        // Initialize radLabel to hidden
        self.radLabel.hidden = true
        
        
        // -----------------------
        // Setup Display Observers
        // -----------------------
        
        // Previous Value
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "displayPreviousValue:", name: "displayPreviousValue", object: nil)
        
        // Current Value
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "displayCurrentValue:", name: "displayCurrentValue", object: nil)
        
        // Memory Value
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "displayMemoryValue:", name: "displayMemoryValue", object: nil)
        
        // Display Infinity
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "displayInfinity:", name: "displayInfinity", object: nil)

        // Display Negative Infinity
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "displayNegativeInfinity:", name: "displayNegativeInfinity", object: nil)
        
        // Error
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "displayError:", name: "displayError", object: nil)
        

        // ---------------
        // Degrees/Radians
        // ---------------
        
        // Degrees to Radians
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "degreesToRadians:", name: "degreesToRadians", object: nil)
        
        // Radians to Degrees
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "radiansToDegrees:", name: "radiansToDegrees", object: nil)
    }
}