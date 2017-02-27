//
//  CTPView.swift
//  CTP
//
//  Created by Фёдор Королёв on 27.02.17.
//  Copyright © 2017 Фёдор Королёв. All rights reserved.
//

import UIKit

protocol CTPViewDelegate:class {
    func estimate()
}

class CTPView: UIStackView {

    weak var delegate: CTPViewDelegate?

    @IBOutlet private weak var ageTextField: UITextField?
    
}
