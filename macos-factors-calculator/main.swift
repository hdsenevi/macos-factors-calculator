//
//  main.swift
//  macos-factors-calculator
//
//  Created by Shanaka Senevirathne on 13/3/20.
//  Copyright © 2020 Shanaka Senevirathne. All rights reserved.
//

import Foundation

print("Hello, World!")

func getNumbersFromParameters() -> (Int?, Int?)
{
    var num1: Int? = nil
    var num2: Int? = nil
    
    if CommandLine.arguments.count == 4
    {
        num1 = Int(CommandLine.arguments[2])
        num2 = Int(CommandLine.arguments[3])
        
        if num1 == nil || num2 == nil
        {
            print("That funciton requires 2 numbers")
            num1 = nil
            num2 = nil
        }
    }
    else
    {
        print("That function requires 2 numbers")
    }
    return (num1, num2)
}

func getNumberFromParameters() -> Int?
{
    var num1: Int? = nil
    
    if CommandLine.arguments.count == 3
    {
        num1 = Int(CommandLine.arguments[2])
        
        if num1 == nil
        {
            print("That funciton requires 1 number")
            num1 = nil
        }
    }
    else
    {
        print("That function requires 2 numbers")
    }
    return num1
}

let option = CommandLine.arguments[1]

switch option
{
case "--gcd":
    let (num1, num2) = getNumbersFromParameters()
    
    // getNumbersFromParameters always returns 2 numbers. So only need to check if one is nil
    if num1 != nil
    {
        let num = Factors.greatestCommonDenominator(num1!, num2!)
        print("Greates common denominator of \(num1!) adn \(num2!) is \(num)")
    }
    break
case "--lcm":
    let (num1, num2) = getNumbersFromParameters()
    
    // getNumbersFromParameters always returns 2 numbers. So only need to check if one is nil
    if num1 != nil
    {
        let num = Factors.leastCommonMultiple(num1!, num2!)
        print("Least common multiple of \(num1!) adn \(num2!) is \(num)")
    }
    break
case "--factors":
    let num = getNumberFromParameters()
    
    if num != nil
    {
        let factors = Factors.factors(num!)
        print("Factors of \(num!) are \(factors)")
    }
    break
case "--isPrime":
    let num = getNumberFromParameters()
    
    if num != nil
    {
        let prime = Factors.isPrime(num!)
        
        if prime
        {
            print("\(num!) is prime")
        }
        else
        {
            print("\(num!) is not prime")
        }
    }
    break
default:
    print("Invalid option. Valid options are:")
    print("--gcd (greatest common denominator)")
    print("--lcm (greatest common denominator")
    print("--factors")
    print("--isPrime")
}
