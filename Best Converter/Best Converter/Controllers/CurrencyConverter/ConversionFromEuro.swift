//
//  ConversionFromEuro.swift
//  Best Converter
//
//  Created by Asma on 08/11/2021.
//

import UIKit

//MARK: - Created a class for conversion from Euro and used the delegate library

class ConversionFromEuro: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    var conversionCurrency = ConversionCurrency.Euro

    
    override func viewDidLoad() {
        super.viewDidLoad()

        textFieldCurrencyEuro.delegate = self

//MARK: - Tap Gesture Recognizer, dismiss the keyboard when the user taps on the screen
                let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
                view.addGestureRecognizer(tap)
    }
    
//MARK: - This connected the label, text Field and segment with IBOutlet
    @IBOutlet weak var currencyEuroLabel: UILabel!
    @IBOutlet weak var textFieldCurrencyEuro: UITextField!
    @IBOutlet weak var segmentCurrencyEuro: UISegmentedControl!
    
//MARK: - Connected Segment with IBAction, and switch cases were called
    
    @IBAction func segmentCurrencyEuroAction(_ sender: UISegmentedControl) {
        
        textFieldCurrencyEuro.text = ""
        switch segmentCurrencyEuro.selectedSegmentIndex {
        case 0:
            conversionCurrency = .USD
            currencyEuroLabel.text = "0.0 USD"
        case 1:
            conversionCurrency = .AUD
            currencyEuroLabel.text = "0.0 AUD"
        case 2:
            conversionCurrency = .SAR
            currencyEuroLabel.text = "0.0 SAR"
        default:
            conversionCurrency = .USD
            currencyEuroLabel.text = "0.0 USD"
        }
    }
    
//MARK: - Arithmetic functions for each currency
    func convertToUsd( euro: Double) -> Double {
        return euro / 0.865199
    }
    func convertToAud( euro: Double) -> Double {
        return euro / 0.640429
    }
    func convertToSar( euro: Double) -> Double {
        return euro / 0.230720
    }
    
//MARK: - Connected text field with IBAction, and switch cases were called
    
    @IBAction func textFieldCurrencyAction(_ sender: UITextField) {
        
        let amountCurrency = Double(textFieldCurrencyEuro.text ?? "0.0") ?? 0.0
        
        switch conversionCurrency {
        case .USD:
            let convertedCurrency = convertToUsd(euro: amountCurrency)
            currencyEuroLabel.text = "\(String(format: "%.2f", convertedCurrency)) USD"
            
        case .AUD:
            let convertedCurrency = convertToAud(euro: amountCurrency)
            currencyEuroLabel.text = "\(String(format: "%.2f", convertedCurrency)) AUD"
            
        case .SAR:
            let convertedCurrency = convertToSar(euro: amountCurrency)
            currencyEuroLabel.text = "\(String(format: "%.2f", convertedCurrency)) SAR"
        case .Euro: break

        }
    }
//MARK: - A Function determines the number of digits to write
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
         
        if let lessCount = textFieldCurrencyEuro.text?.count, lessCount < 5 {
            return true
        } else { return false }
    }
    

}
