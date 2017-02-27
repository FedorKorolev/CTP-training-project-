//
//  CTPView.swift
//  CTP
//
//  Created by Фёдор Королёв on 27.02.17.
//  Copyright © 2017 Фёдор Королёв. All rights reserved.
//

import UIKit

protocol CTPViewDelegate:class {
    func calcAgeСoefficient(view: CTPView) -> Float
    func calcPowerCoefficient(view: CTPView) -> Float
    func calcTotal(view: CTPView, basic: Float, state: Float, drivers: Float, ageAndXP: Float, power: Float, insurance: Float)
}

class CTPView: UIView {

    weak var delegate: CTPViewDelegate?
    
    // Age
    @IBOutlet weak var ageTextField: UITextField?
    @IBOutlet weak var ageСoefficientLabel: UILabel!
    
    // XP
    @IBOutlet weak var xp: UISwitch!
    
    // Power
    @IBOutlet weak var powerTextField: UITextField!
    @IBOutlet weak var powerСoefficientLabel: UILabel!
    
    // Total
    @IBOutlet weak var totalLabel: UILabel!
    
    // Calculate
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        // Calc and set age coefficient
        let ageCoefficient = delegate?.calcAgeСoefficient(view: self)
        
        // Calc and set power coefficient
        let powerCoefficient = delegate?.calcPowerCoefficient(view: self)
        
        // Calc total
        delegate?.calcTotal(view: self, basic: 1980, state: 2, drivers: 1, ageAndXP: ageCoefficient!, power: powerCoefficient!, insurance: 1)
        
        
    }
    

}
