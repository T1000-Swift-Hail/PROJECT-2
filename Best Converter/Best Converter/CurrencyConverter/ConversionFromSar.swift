//
//  ConversionFromSar.swift
//  Best Converter
//
//  Created by Asma on 08/11/2021.
//

import UIKit

//MARK: - Created a class for conversion from SAR and used the delegate library

class ConversionFromSar: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    var conversionCurrency = ConversionCurrency.SAR

    
    override func viewDidLoad() {
        super.viewDidLoad()

        textFieldCurrencySar.delegate = self

        //MARK: - Tap Gesture Recognizer, dismiss the keyboard when the user taps on the screen
                let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
                view.addGestureRecognizer(tap)
    }
    //MARK: - This connected the label, text Field and segment with IBOutlet
    
    @IBOutlet weak var currencySarLabel: UILabel!
    @IBOutlet weak var textFieldCurrencySar: UITextField!
    @IBOutlet weak var segmentCurrency: UISegmentedControl!
    
    //MARK: - Connected Segment with IBAction, and switch cases were called
    
    @IBAction func segmentCurrencyAction(_ sender: UISegmentedControl) {
        
        textFieldCurrencySar.text = ""
        switch segmentCurrency.selectedSegmentIndex {
        case 0:
            conversionCurrency = .USD
            currencySarLabel.text = "0.0 USD"
        case 1:
            conversionCurrency = .AUD
            currencySarLabel.text = "0.0 AUD"
        case 2:
            conversionCurrency = .Euro
            currencySarLabel.text = "0.0 Euro"
        default:
            conversionCurrency = .USD
            currencySarLabel.text = "0.0 USD"
        }
    }
    //MARK: - Arithmetic functions for each currency
    
    func convertToUsd( sar: Double) -> Double {
        return sar / 3.75000
    }
    func convertToAud( sar: Double) -> Double {
        return sar / 2.78368
    }
    func convertToEuro( sar: Double) -> Double {
        return sar / 4.33426
    }
    
    //MARK: - Connected text field with IBAction, and switch cases were called
    

    @IBAction func textFieldCurrencyAction(_ sender: UITextField) {
        
        let amountCurrency = Double(textFieldCurrencySar.text ?? "0.0") ?? 0.0
        
        switch conversionCurrency {
        case .USD:
            let convertedCurrency = convertToUsd(sar: amountCurrency)
            currencySarLabel.text = "\(String(format: "%.2f", convertedCurrency)) USD"
            
        case .AUD:
            let convertedCurrency = convertToAud(sar: amountCurrency)
            currencySarLabel.text = "\(String(format: "%.2f", convertedCurrency)) AUD"
            
        case .Euro:
            let convertedCurrency = convertToEuro(sar: amountCurrency)
            currencySarLabel.text = "\(String(format: "%.2f", convertedCurrency)) Euro"
        case .SAR: break
            
        }
    }
    
    //MARK: - A Function determines the number of digits to write
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
         
        if let lessCount = textFieldCurrencySar.text?.count, lessCount < 5 {
            return true
        } else { return false }
    }
    

}
