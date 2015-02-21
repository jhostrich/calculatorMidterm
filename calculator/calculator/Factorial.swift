//
//  Factorial.swift
//  calculator
//
//  Created by Adam Ostrich on 2/21/15.
//  Copyright (c) 2015 Johanna Ostrich. All rights reserved.
//

import Foundation

func factorial(number: Int, prev: Int=1) -> Int {
    if number == 0 {
        return 1
    }
    else if number == 1 {
        return prev
    }
    else {
        return factorial(number-1, prev: number * prev)
    }
}
