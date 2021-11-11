//
//  ConversionFromUsd.swift
//  Best Converter
//
//  Created by Asma on 08/11/2021.
//

import UIKit

//MARK: - Created a class for conversion from USD and used the delegate library
class ConversionFromUsd: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    var conversionCurrency = ConversionCurrency.USD
    //MARK: - This connected the label, text Field and segment with IBOutlet
    @IBOutlet weak var currencyUsdLabel: UILabel!
    @IBOutlet weak var textFieldCurrencyUsd: UITextField!
    @IBOutlet weak var segmentCurrencyUsd: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldCurrencyUsd.delegate = self
        //MARK: - Tap Gesture Recognizer, dismiss the keyboard when the user taps on the screen
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
    //MARK: - Connected Segment with IBAction, and switch cases were called
    @IBAction func segmentCurrencyUsdAction(_ sender: UISegmentedControl) {
        
        textFieldCurrencyUsd.text = ""
        switch segmentCurrencyUsd.selectedSegmentIndex {
        case 0:
            conversionCurrency = .SAR
            currencyUsdLabel.text = "0.0 SAR"
        case 1:
            conversionCurrency = .AUD
            currencyUsdLabel.text = "0.0 AUD"
        case 2:
            conversionCurrency = .Euro
            currencyUsdLabel.text = "0.0 Euro"
        default:
            conversionCurrency = .SAR
            currencyUsdLabel.text = "0.0 SAR"
        }
    }
    //MARK: - Arithmetic functions for each currency
    func convertToSar( usd: Double) -> Double {
        return usd / 0.266667
    }
    func convertToAud( usd: Double) -> Double {
        return usd / 0.740211
    }
    func convertToEuro( usd: Double) -> Double {
        return usd / 1.15878
    }
    //MARK: - Connected text field with IBAction, and switch cases were called
    @IBAction func textFieldCurrencyAction(_ sender: UITextField) {
        
        let amountCurrency = Double(textFieldCurrencyUsd.text ?? "0.0") ?? 0.0
        
        switch conversionCurrency {
        case .SAR:
            let convertedCurrency = convertToSar(usd: amountCurrency)
            currencyUsdLabel.text = "\(String(format: "%.2f", convertedCurrency)) SAR"
            
        case .AUD:
            let convertedCurrency = convertToAud(usd: amountCurrency)
            currencyUsdLabel.text = "\(String(format: "%.2f", convertedCurrency)) AUD"
            
        case .Euro:
            let convertedCurrency = convertToEuro(usd: amountCurrency)
            currencyUsdLabel.text = "\(String(format: "%.2f", convertedCurrency)) Euro"
        case .USD: break
        }
    }
    //MARK: - A Function determines the number of digits to write
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if let lessCount = textFieldCurrencyUsd.text?.count, lessCount < 5 {
            return true
        } else { return false }
    }
}
