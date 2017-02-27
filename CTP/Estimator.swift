//
//  Estimator.swift
//  CTP
//
//  Created by Фёдор Королёв on 27.02.17.
//  Copyright © 2017 Фёдор Королёв. All rights reserved.
//

import Foundation

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
    
    func calcPowerCoefficient(power p: Int) -> Float {
        if p <= 50 {
            return 0.6
        } else if p > 50 && p <= 70 {
            return 1.0
        } else if p > 70 && p <= 100 {
            return 1.1
        } else if p > 100 && p <= 120 {
            return 1.2
        } else if p > 120 && p <= 150 {
            return 1.4
        } else if p > 150 {
            return 1.6
        } else {
            return -1
        }
    }
    
    func calcTotalWith(coefficientsBasic: Float, state: Float, drivers: Float, ageAndXP: Float, power: Float, insurance: Float) -> Float {
        return coefficientsBasic * state * drivers * ageAndXP * power * insurance
    }
    
}
