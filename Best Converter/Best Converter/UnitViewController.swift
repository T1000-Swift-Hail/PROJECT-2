//
//  UnitViewController.swift
//  Best Converter
//
//  Created by Asma on 07/11/2021.
//

import UIKit
import Foundation

enum ConversionUnit {
    case cm
    case km
    case inch
}

class UnitViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    var conversionUnit = ConversionUnit.cm
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldUnit.delegate = self
        
        //MARK: - Tap Gesture Recognizer, dismiss the keyboard when the user taps on the screen
                let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
                view.addGestureRecognizer(tap)

    }
    
    @IBOutlet weak var unitLabel: UILabel!
    @IBOutlet weak var textFieldUnit: UITextField!
    @IBOutlet weak var segmentUnit: UISegmentedControl!
    
    
    @IBAction func segmentUnitAction(_ sender: UISegmentedControl) {
        textFieldUnit.text = ""
        
        switch segmentUnit.selectedSegmentIndex {
        case 0:
            conversionUnit = .km
            unitLabel.text = "0.0 km"
        case 1:
            conversionUnit = .cm
            unitLabel.text = "0.0 cm"
        default:
            conversionUnit = .inch
            unitLabel.text = "0.0 inch"
        }
        
    }
    
    func convertToKm( meter: Double) -> Double {
        return meter * 0.001
    }
    func convertToCm( meter: Double) -> Double {
        return meter * 100
    }
    func convertToInch( meter: Double) -> Double {
        return meter * 39.370078740157
    }
    
    
    
    @IBAction func textFieldUnitAction(_ sender: UITextField) {
        
        let amountUnit = Double(textFieldUnit.text ?? "0.0") ?? 0.0
        
        switch conversionUnit {
        case .km:
            let convertedValue = convertToKm(meter:amountUnit)
            unitLabel.text = "\(String (format: "%.2f", convertedValue)) km"
        case .cm:
            let convertedValue = convertToCm(meter: amountUnit)
            unitLabel.text = "\(String (format: "%.2f", convertedValue)) cm"
        case .inch:
            let convertedValue = convertToInch(meter: amountUnit)
            unitLabel.text = "\(String (format: "%.2f", convertedValue)) inch"
        }
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
         
        if let lessCount = textFieldUnit.text?.count, lessCount < 4 {
            return true
        } else { return false }
    }
    
}
