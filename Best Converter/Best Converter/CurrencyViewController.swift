//
//  CurrencyViewController.swift
//  Best Converter
//
//  Created by Asma on 07/11/2021.
//

import UIKit
import Foundation

enum ConversionCurrency {
    case ASD
    case USD
    case Euru
}

class CurrencyViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    var conversionCurrency = ConversionCurrency.USD

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldCurrency.delegate = self
        
        //MARK: - Tap Gesture Recognizer, dismiss the keyboard when the user taps on the screen
                let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
                view.addGestureRecognizer(tap)
    }
    
    
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var textFieldCurrency: UITextField!
    @IBOutlet weak var segmentCurrency: UISegmentedControl!
    @IBAction func segmentCurrencyAction(_ sender: UISegmentedControl) {
        
        textFieldCurrency.text = ""
        switch segmentCurrency.selectedSegmentIndex {
        case 0:
            conversionCurrency = .USD
            currencyLabel.text = "0.0 USD"
        case 1:
            conversionCurrency = .ASD
            currencyLabel.text = "0.0 ASD"
        case 2:
            conversionCurrency = .Euru
            currencyLabel.text = "0.0 Euru"
        default:
            conversionCurrency = .USD
            currencyLabel.text = "0.0 USD"
        }
    }
    
    func convertToUsd( sar: Double) -> Double {
        return sar * 3.75000
    }
    func convertToAsd( sar: Double) -> Double {
        return sar * 2.77579
    }
    func convertToEuru( sar: Double) -> Double {
        return sar * 4.33426
    }
    
    
    @IBAction func textFieldCurrencyAction(_ sender: UITextField) {
        
        let amountCurrency = Double(textFieldCurrency.text ?? "0.0") ?? 0.0
        
        switch conversionCurrency {
        case .USD:
            let convertedCurrency = convertToUsd(sar: amountCurrency)
            currencyLabel.text = "\(String(format: "%.2f", convertedCurrency)) USD"
            
        case .ASD:
            let convertedCurrency = convertToAsd(sar: amountCurrency)
            currencyLabel.text = "\(String(format: "%.2f", convertedCurrency)) ASD"
            
        case .Euru:
            let convertedCurrency = convertToAsd(sar: amountCurrency)
            currencyLabel.text = "\(String(format: "%.2f", convertedCurrency)) Euru"
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
         
        if let lessCount = textFieldCurrency.text?.count, lessCount < 4 {
            return true
        } else { return false }
    }
    
}
