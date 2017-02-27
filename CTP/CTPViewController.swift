//
//  CTPViewController.swift
//  CTP
//
//  Created by Фёдор Королёв on 27.02.17.
//  Copyright © 2017 Фёдор Королёв. All rights reserved.
//

import UIKit

class CTPViewController: UIViewController, CTPViewDelegate {

//    var estimator = Estimator()
    
    @IBOutlet weak var ctpView: CTPView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setup() {
        ctpView.delegate = self
    }
    
    func estimate(){}
    

}

