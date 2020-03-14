//
//  main.swift
//  macos-factors-calculator
//
//  Created by Shanaka Senevirathne on 13/3/20.
//  Copyright © 2020 Shanaka Senevirathne. All rights reserved.
//

import Foundation

print("Hello, World!")

let option = CommandLine.arguments[1]

switch option
{
case "--gcd":
    break
case "--lcm":
    break
case "--factors":
    break
case "--isPrime":
    break
default:
    print("Invalid option. Valid options are:")
    print("--gcd (greatest common denominator)")
    print("--lcm (greatest common denominator")
    print("--factors")
    print("--isPrime")
}
