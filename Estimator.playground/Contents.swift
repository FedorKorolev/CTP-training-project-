//: Playground - noun: a place where people can play

import UIKit

struct Estimator {
    
    func calcAgeСoefficient(age: Int, xp: Bool) -> Float {
        if age <= 22 && xp == false {
            return 1.8
        } else if age <= 22 && xp {
            return 1.6
        } else if age > 22 && xp == false {
            return 1.7
        } else if age > 22 && xp {
            return 1.0
        } else {
            return -1
        }
    }
    
}

let estimator = Estimator()
estimator.calcAgeСoefficient(age: 22, xp: true)
