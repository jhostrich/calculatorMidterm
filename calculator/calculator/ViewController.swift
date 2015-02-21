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
    @IBOutlet weak var radButton: UIButton!
    // Fifth Row
    @IBOutlet weak var sinhCode: UIButton!
    @IBOutlet weak var coshButton: UIButton!
    @IBOutlet weak var tanhButton: UIButton!
    @IBOutlet weak var πButton: UIButton!
    @IBOutlet weak var randButton: UIButton!

    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

