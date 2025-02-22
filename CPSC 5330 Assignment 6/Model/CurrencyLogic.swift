//
//  CurrencyLogic.swift
//  CPSC 5330 Assignment 6
//
//  Created by user273384 on 2/20/25.
//

import Foundation


struct CurrencyLogic {
    
    var currSwitchOne = true
    var currSwitchTwo = true
    var currSwitchThree = true
    var currSwitchFour = true
    var usDollarsIn : Int = 0
    
    let stringOne = "Euro"
    let stringTwo = "Turkish Lira"
    let stringThree = "Mexican Peso"
    let stringFour = "Japanese Yen"
    
    
    
    mutating func getAmount(_ amount: String) -> Int {
        print("US $ in \(amount)")
        usDollarsIn = Int(amount) ?? 0
        print("US $ in Int \(usDollarsIn)")
        //usDollarsIn = Int(amount)
        return usDollarsIn
    }
    
    // Euro
    mutating func setCurrOneSwitch (_ switchOneValue: Bool) {
        if switchOneValue {
            currSwitchOne = true
        } else {
            currSwitchOne = false
        }
    }
    
    mutating func getCurrOneAmount() -> String {
        let euro = Float(usDollarsIn) * 0.95594308
        print("euro \(euro)")
        return String(format: "%.2f", round(euro * 100) / 100)
    }
    
    
    // Turkish Lira
    mutating func setCurrTwoSwitch (_ switchTwoValue: Bool) {
        if switchTwoValue {
            currSwitchTwo = true
        } else {
            currSwitchTwo = false
        }
    }
    
    mutating func getCurrTwoAmount() -> String {
        let turkishLira = Float(usDollarsIn) * 36.435673
        print("turkishLira \(turkishLira)")
        return String(format: "%.2f", round(turkishLira * 100) / 100)
    }
    
    
    // Mexican Peso
    mutating func setCurrThreeSwitch (_ switchThreeValue: Bool) {
        if switchThreeValue {
            currSwitchThree = true
        } else {
            currSwitchThree = false
        }
    }
    
    mutating func getCurrThreeAmount() -> String {
        let peso = Float(usDollarsIn) * 20.432189
        print("peso \(peso)")
        return String(format: "%.2f", round(peso * 100) / 100)
    }
    
    
    // Japanese Yen
    mutating func setCurrFourSwitch (_ switchFourValue: Bool) {
        if switchFourValue {
            currSwitchFour = true
        } else {
            currSwitchFour = false
        }
    }
    
    mutating func getCurrFourAmount() -> String {
        let yen = Float(usDollarsIn) * 149.29762
        print("yen \(yen)")
        return String(format: "%.2f", round(yen * 100) / 100)
        // return String(round(yen * 100) / 100)
    }
    
    func getCurrLabelFour() -> String {
        
        if currSwitchFour {
            return stringFour
        }
        if currSwitchThree {
            return stringThree
        }
        
        if currSwitchTwo {
            return stringTwo
        }
        
        if currSwitchOne {
            return stringOne
        }
        return ""
    }
    
    mutating func getCurrFourString() -> String {
        if currSwitchFour {
            return getCurrFourAmount()
        }
        if currSwitchThree {
            return getCurrThreeAmount()
        }
        
        if currSwitchTwo {
            return getCurrTwoAmount()
        }
        
        if currSwitchOne {
            return getCurrOneAmount()
        }
        return ""
    }
    
    
    func getCurrLabelThree() -> String {
        var counter = 0
        
        if currSwitchFour {
            counter += 1
        }
        
        if currSwitchThree {
            if counter == 0 {
                counter += 1
            } else {
                return stringThree
            }
        }
        
        
        if currSwitchTwo {
            if counter == 0 {
                counter += 1
            } else {
                return stringTwo
            }
        }
        
        if currSwitchOne {
            if counter == 0 {
                counter += 1
            } else {
                return stringOne
            }
        }
        return ""
    }
    
    mutating func getCurrThreeString() -> String {
        var counter = 0
        
        if currSwitchFour {
            counter += 1
        }
        
        if currSwitchThree {
            if counter == 0 {
                counter += 1
            } else {
                return getCurrThreeAmount()
            }
        }
        
        if currSwitchTwo {
            if counter == 0 {
                counter += 1
            } else {
                return getCurrTwoAmount()
            }
        }
        
        if currSwitchOne {
            if counter == 0 {
                counter += 1
            } else {
                return getCurrOneAmount()
            }
        }
        return ""    }
    
    
    func getCurrLabelTwo() -> String {
        var counter = 0
        
        if currSwitchFour {
            counter += 1
        }
        
        if currSwitchThree {
            counter += 1
        }
        
        if currSwitchTwo {
            if counter < 2 {
                counter += 1
            } else {
                return stringTwo
            }
        }
        
        if currSwitchOne {
            if counter < 2 {
                counter += 1
            } else {
                return stringOne
            }
        }
        return ""
    }
    
    mutating func getCurrTwoString() -> String {
        var counter = 0
        
        if currSwitchFour {
            counter += 1
        }
        
        if currSwitchThree {
            counter += 1
        }
        
        if currSwitchTwo {
            if counter < 2 {
                counter += 1
            } else {
                return getCurrTwoAmount()
            }
        }
        
        if currSwitchOne {
            if counter < 2 {
                counter += 1
            } else {
                return getCurrOneAmount()
            }
        }
        return ""    }
    
    
    func getCurrLabelOne() -> String {
        var counter = 0
        
        if currSwitchFour {
            counter += 1
        }
        
        if currSwitchThree {
            counter += 1
        }
        
        if currSwitchTwo {
            counter += 1
        }
        
        if currSwitchOne {
            if counter < 3 {
                counter += 1
            } else {
                return stringOne
            }
        }
        return ""
    }
    
    mutating func getCurrOneString() -> String {
        var counter = 0
        
        if currSwitchFour {
            counter += 1
        }
        
        if currSwitchThree {
            counter += 1
        }
        
        if currSwitchTwo {
            counter += 1
        }
        
        if currSwitchOne {
            if counter < 3 {
                counter += 1
            } else {
                return getCurrOneAmount()
            }
        }
        return ""
    }
}
