//
//  ConversionFromAud.swift
//  Best Converter
//
//  Created by Asma on 08/11/2021.
//

import UIKit

class ConversionFromAsd: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    var conversionCurrency = ConversionCurrency.USD

    
    override func viewDidLoad() {
        super.viewDidLoad()

        textFieldCurrencyAud.delegate = self

        //MARK: - Tap Gesture Recognizer, dismiss the keyboard when the user taps on the screen
                let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
                view.addGestureRecognizer(tap)
    }
    
    
    @IBOutlet weak var currencyAudLabel: UILabel!
    @IBOutlet weak var textFieldCurrencyAud: UITextField!
    @IBOutlet weak var segmentCurrencyAud: UISegmentedControl!
    @IBAction func segmentCurrencyAudAction(_ sender: UISegmentedControl) {
        
        textFieldCurrencyAud.text = ""
        switch segmentCurrencyAud.selectedSegmentIndex {
        case 0:
            conversionCurrency = .USD
            currencyAudLabel.text = "0.0 USD"
        case 1:
            conversionCurrency = .SAR
            currencyAudLabel.text = "0.0 SAR"
        case 2:
            conversionCurrency = .Euro
            currencyAudLabel.text = "0.0 Euro"
        default:
            conversionCurrency = .USD
            currencyAudLabel.text = "0.0 USD"
        }
    }
    
    func convertToUsd( aud: Double) -> Double {
        return aud / 1.35097
    }
    func convertToSar( aud: Double) -> Double {
        return aud / 0.360258
    }
    func convertToEuro( aud: Double) -> Double {
        return aud / 1.56145
    }
    
    
    @IBAction func textFieldCurrencyAction(_ sender: UITextField) {
        
        let amountCurrency = Double(textFieldCurrencyAud.text ?? "0.0") ?? 0.0
        
        switch conversionCurrency {
        case .USD:
            let convertedCurrency = convertToUsd(aud: amountCurrency)
            currencyAudLabel.text = "\(String(format: "%.2f", convertedCurrency)) USD"
            
        case .SAR:
            let convertedCurrency = convertToSar(aud: amountCurrency)
            currencyAudLabel.text = "\(String(format: "%.2f", convertedCurrency)) SAR"
            
        case .Euro:
            let convertedCurrency = convertToEuro(aud: amountCurrency)
            currencyAudLabel.text = "\(String(format: "%.2f", convertedCurrency)) Euro"
        case .AUD: break

        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
         
        if let lessCount = textFieldCurrencyAud.text?.count, lessCount < 4 {
            return true
        } else { return false }
    }
    

}
