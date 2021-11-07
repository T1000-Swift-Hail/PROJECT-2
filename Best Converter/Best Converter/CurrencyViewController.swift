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
    case USD
}

class CurrencyViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    var conversionCurrency = ConversionCurrency.SAR

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
    @IBAction func egmentCurrencyAction(_ sender: UISegmentedControl) {
        
        textFieldCurrency.text = ""
        switch segmentCurrency.selectedSegmentIndex {
        case 0:
            conversionCurrency = .SAR
            currencyLabel.text = "0.0 USD"
        case 1:
            conversionCurrency = .USD
            currencyLabel.text = "0.0 SAR"
        default:
            conversionCurrency = .SAR
            currencyLabel.text = "0.0 USD"
        }
    }
    
    func convertToSar( usd: Double) -> Double {
        return usd / 3.75
    }
    func convertToUsd( sar: Double) -> Double {
        return sar * 3.75
    }
    
    
    @IBAction func textFieldCurrencyAction(_ sender: UITextField) {
        
        let amountCurrency = Double(textFieldCurrency.text ?? "0.0") ?? 0.0
        
        switch conversionCurrency {
        case .SAR:
            let convertedCurrency = convertToSar(usd: amountCurrency)
            currencyLabel.text = "\(String(format: "%.4f", convertedCurrency)) USD"
            
        case .USD:
            let convertedCurrency = convertToUsd(sar: amountCurrency)
            currencyLabel.text = "\(String(format: "%.4f", convertedCurrency)) SAR"
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
         
        if let lessCount = textFieldCurrency.text?.count, lessCount < 4 {
            return true
        } else { return false }
    }
    
}
