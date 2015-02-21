//
//  PressButtonFunctions.swift
//  calculator
//
//  Created by Adam Ostrich on 2/21/15.
//  Copyright (c) 2015 Johanna Ostrich. All rights reserved.
//

import UIKit

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
// TODO: This functionality is all in the view controller, move it there
//func pressSecondButton() {  }

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
func pressSinhCode()           { Calculator.shared.performUnaryOperation("sinh") }
func pressCoshButton()         { Calculator.shared.performUnaryOperation("cosh") }
func pressTanhButton()         { Calculator.shared.performUnaryOperation("tanh") }
func pressπButton()            { Calculator.shared.performUnaryOperation("π")    }
func pressRandButton()         { Calculator.shared.performUnaryOperation("rand") }