//: Playground - noun: a place where people can play
//  Created by Fernando Romiti on 2/22/16.
//  Copyright © 2016 Solstice Mobile. All rights reserved.

import UIKit

extension String {
    func stringWithoutSpaces() -> String {
        return self.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
    }
}

class NamedOne: NSObject {
    private var isSettingFullName = false
    var firstName = String() {
        willSet(name) {
            if name != firstName {
                isSettingFullName = true
                self.fullName = name.stringWithoutSpaces() + " " + lastName.stringWithoutSpaces()
            } else {
                return
            }
        }
    }
    var lastName = String() {
        willSet(last) {
            if last != firstName {
                isSettingFullName = true
                self.fullName = firstName.stringWithoutSpaces() + " " + last.stringWithoutSpaces()
            } else {
                return
            }
        }
    }
    
    var fullName = String() {
        willSet(fullname) {
            if fullname != self.fullName && !isSettingFullName {
                let first = fullname.componentsSeparatedByString(" ").first!.stringWithoutSpaces()
                if first != self.firstName {
                    self.firstName = first
                }
                let last = fullname.componentsSeparatedByString(" ").last!.stringWithoutSpaces()
                if last != self.lastName {
                    self.lastName = last
                }
            } else {
                isSettingFullName = false
            }
        }
    }
}

/////// TEST Playground :) (Not part of the class)

var test = NamedOne()
//test.firstName = "Fernando"
//test.lastName = "Romiti"
test.fullName = "Fernando Romiti"

print(test.firstName)
print(test.lastName)
print(test.fullName)