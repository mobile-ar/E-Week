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
        var num = dividers.first!, flag = true
        
        while(flag) {
            for divisor in dividers {
                if (num%divisor != 0) {
                    break;
                }
                if dividers.last! == divisor {
                    return num
                }
            }
            num+=dividers.first!
        }
    }
}

let arr = [Int](2...20).sort({$0 > $1})
let num = Calculate.minNumberDividedBy(arr)
print("lowest divisible number upto 20 is \(num)") //lowest divisible number upto 20 is 232792560