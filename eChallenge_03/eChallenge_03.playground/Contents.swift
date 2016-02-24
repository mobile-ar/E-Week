//: Playground - noun: a place where people can play

import UIKit

class Calculate {
    static func minNumberDividedBy(dividers: [Int]) -> Int {
        var num = 0, flag = true
        
        while(flag) {
            for divisor in dividers {
                if (num%divisor != 0) {
                    break;
                }
                if dividers.count == divisor {
                    flag = false
                }
            }
            if flag {
                num++
            }
        }
        return num
    }
}


let num = Calculate.minNumberDividedBy([Int](1...20))
print("lowest divisible number upto 20 is \(num)")
