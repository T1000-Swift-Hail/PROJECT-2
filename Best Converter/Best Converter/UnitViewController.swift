//
//  UnitViewController.swift
//  Best Converter
//
//  Created by Asma on 07/11/2021.
//

import UIKit
import Foundation

enum ConversionUnit {
    case m
    case km
}

class UnitViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    var conversionUnit = ConversionUnit.m
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputTextField.delegate = self
        
        //MARK: - Tap Gesture Recognizer, dismiss the keyboard when the user taps on the screen
                let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
                view.addGestureRecognizer(tap)

    }
    
    @IBOutlet weak var conversionLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var inputSegment: UISegmentedControl!
    
    @IBAction func inputSegmentAction(_ sender: UISegmentedControl) {
        inputTextField.text = ""
        
        switch inputSegment.selectedSegmentIndex {
        case 0:
            conversionUnit = .m
            conversionLabel.text = "0.0 km"
        case 1:
            conversionUnit = .km
            conversionLabel.text = "0.0 m"
        default:
            conversionUnit = .m
            conversionLabel.text = "0.0 km"
        }
        
    }
    
    func convertToM( kilometer: Double) -> Double {
        return kilometer * 1000
    }
    func convertToKm( meter: Double) -> Double {
        return meter * 0.001
    }
    
    
    @IBAction func inputTextFieldAction(_ sender: UITextField) {
        
        let amountUnit = Double(inputTextField.text ?? "0.0") ?? 0.0
        
        switch conversionUnit {
        case .m:
            let convertedValue = convertToM(kilometer: amountUnit)
            conversionLabel.text = "\(convertedValue) km"
        case .km:
            let convertedValue = convertToKm(meter: amountUnit)
            conversionLabel.text = "\(convertedValue) m"
        }
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
         
        if let lessCount = inputTextField.text?.count, lessCount < 4 {
            return true
        } else { return false }
    }
    
}
