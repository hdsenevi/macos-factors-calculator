//
//  Factors.swift
//  macos-factors-calculator
//
//  Created by Shanaka Senevirathne on 13/3/20.
//  Copyright © 2020 Shanaka Senevirathne. All rights reserved.
//

import Cocoa

class Factors: NSObject {
    
    class func greatestCommonDenominator(_ num1: Int, _ num2: Int) -> Int {
        let remainder = num1 % num2
        
        if remainder != 0
        {
            return greatestCommonDenominator(num2, remainder)
        }
        else
        {
            return num2
        }
    }
    
    class func leastCommonMultiple(_ num1: Int, _ num2: Int) -> Int {
        return num1 * num2 / greatestCommonDenominator(num1, num2)
    }
    
    class func factors(_ num1: Int) -> [Int]
    {
        var factorsArray = [Int]()
        
        let half = Int(num1 / 2)
        
        for number in 1...half-1
        {
            if num1 % number == 0 && !factorsArray.contains(number)
            {
                factorsArray.append(number)
                factorsArray.append(num1 / number)
            }
        }
        
        factorsArray.sort()
        return factorsArray
    }
    
    class func isPrime(_ num1: Int) -> Bool
    {
        // A number is prime if divisible by 1 and itself. Meaning factors.count == 2
        return factors(num1).count == 2
    }
    
}

