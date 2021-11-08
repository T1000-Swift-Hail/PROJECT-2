//
//  CurrencyViewController.swift
//  Best Converter
//
//  Created by Asma on 07/11/2021.
//

import UIKit
import Foundation

enum ConversionCurrency {
    case SAR
    case AUD
    case USD
    case Euro
}

class CurrencyViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    var conversionCurrency = ConversionCurrency.USD

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    
}
