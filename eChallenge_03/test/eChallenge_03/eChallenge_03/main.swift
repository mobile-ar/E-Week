//
//  main.swift
//  eChallenge_03
//
//  Created by Fernando Romiti on 2/24/16.
//  Copyright © 2016 Fernando Romiti. All rights reserved.
//

import Foundation

class Calculate {
    static func minNumberDividedBy(dividers: [Int]) -> Int {
        var num = 1, flag = true
        
        while(flag) {
            for divisor in dividers {
                if (num%divisor != 0) {
                    break;
                }
                if dividers.count == divisor {
                    flag = false
                }
            }
            num++
        }
        return num-1
    }
}


let num = Calculate.minNumberDividedBy([Int](2...20))
print("lowest divisible number upto 20 is \(num)") //lowest divisible number upto 20 is 232792560

//lowest divisible number upto 20 is 232792560