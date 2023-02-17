//

// This program receives the length of logs from user.
// From information given, it calculates how much the truck would be able,
// to contain, with usage of try catch, etc.

//
//  Created by Sarah Andrew

//  Created on 2023-02-17

//  Version 1.0

//  Copyright (c) Year Sarah. All rights reserved.
import Foundation
import Glibc

 // declare variable 
let MAP_LOGS = 20.0
let MAX_WEIGHT = 1110.0
let OP_1 = 0.25
let OP_2 = 0.5
let OP_3 = 1.0

// Receive user input
print("Please enter the length of log (0.25, 0.5, or 1): ")
if let logDouble = Double(readLine()!) {
    // checks to see if condition is true, then executes, if not,
    // skip,
    if logDouble == OP_1 || logDouble == OP_2 || logDouble == OP_3 {
        // calculates max weight truck can hold with given length.
        let truckSize = MAX_WEIGHT / (logDouble * MAP_LOGS)
        
        // Display results to user
        print("The truck will be able to take \(logDouble)")
        print("(m) in length carrying", truckSize, "logs.")
    } else if logDouble < 0 {
        // executes whenever negative number input. 
        print("Please enter positive digits.")
    } else {
        // executes whenever user input as an invalid number.
        print("Please enter numbers listed above.")
    }
} else {
    print("Please enter valid input.")
}
