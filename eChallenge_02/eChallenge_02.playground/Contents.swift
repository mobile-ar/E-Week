//: Playground - noun: a place where people can play

import UIKit

class Calculator {
    static func getSumForTheMultiplesOf(number: Int, forTheFirst count: Int) -> Int {
        var sum = 0
        for i in 1..<count {
            if (i%number == 0) {
                sum += i
            }
        }
        return sum
    }
    
    static func getSumForTheMultiplesOf(numbers: [Int], forTheFirst count: Int) -> Int {
        var sum = 0
        for number in numbers {
            sum += self.getSumForTheMultiplesOf(number, forTheFirst: count)
        }
        return sum
    }
    
    static func getSumForTheMultiplesOf3or5(count: Int) -> Int {
        var sum = 0
        for i in 1..<count {
            if (i%3 == 0 || i%5 == 0) {
                sum += i
            }
        }
        return sum
    }
}

//print(Calculator.getSumForTheMultiplesOf([3,5], forTheFirst: 10))
//print(Calculator.getSumForTheMultiplesOf3and5(10))

print(Calculator.getSumForTheMultiplesOf([3,5], forTheFirst: 1000)) //Considering repetead numbers
print(Calculator.getSumForTheMultiplesOf3or5(1000)) //No Repetead numbers considered

// ;)
