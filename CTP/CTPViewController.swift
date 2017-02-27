//
//  CTPViewController.swift
//  CTP
//
//  Created by Фёдор Королёв on 27.02.17.
//  Copyright © 2017 Фёдор Королёв. All rights reserved.
//

import UIKit

class CTPViewController: UIViewController, CTPViewDelegate {
    
    var estimator = Estimator()
    
    
    @IBOutlet weak var ctpView: CTPView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        ctpView.delegate = self
        ctpView.xp.isOn = false
    }
    
    func calcAgeСoefficient(view: CTPView) -> Float {
        guard let ageText = ctpView.ageTextField?.text,
            let ageValue = Int(ageText) else {
                return 0
        }
        let xp = ctpView.xp.isOn
        let ageCoefficient = estimator.calcAgeСoefficient(age: ageValue, xp: xp)
        view.ageСoefficientLabel.text = "Коэффициент \(ageCoefficient)"
        return ageCoefficient
    }
    
    func calcPowerCoefficient(view: CTPView) -> Float {
        guard let powerText = ctpView.powerTextField?.text,
            let powerValue = Int(powerText) else {
                return 0
        }
        let powerCoefficient = estimator.calcPowerCoefficient(power: powerValue)
        view.powerСoefficientLabel.text = "Коэффициент \(powerCoefficient)"
        return powerCoefficient
    }
    
    func calcTotal(view: CTPView, basic: Float, state: Float, drivers: Float, ageAndXP: Float, power: Float, insurance: Float) {
        let total = estimator.calcTotalWith(coefficientsBasic: basic, state: state, drivers: drivers, ageAndXP: ageAndXP, power: power, insurance: insurance)
        view.totalLabel.text = "\(total) ₽"
    }
}

