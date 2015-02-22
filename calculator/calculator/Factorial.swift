//
//  Factorial.swift
//  calculator
//
//  Created by Adam Ostrich on 2/21/15.
//  Copyright (c) 2015 Johanna Ostrich. All rights reserved.
//

import Foundation

func factorial(number: Double, prev: Double=1) -> Double {
    if number == 0 {
        return 1.0
    }
    else if number == 1 {
        println("Hey now")
        return prev
    }
    else {
        return factorial(number-1, prev: number * prev)
    }
}
